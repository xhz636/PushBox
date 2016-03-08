`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:29 12/22/2015 
// Design Name: 
// Module Name:    PS2_Read 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PS2_Read(
    input clk,
    input rst,
    input ps2_clk,
    input ps2_data,
    output reg [7:0] ascii,
    output key_break,
    output ready
    );

    wire ready_keyboard;
    wire [9:0] data;
    wire [7:0] data_ascii;
    assign key_break = data[8];

    //获取PS2键盘传入数据
    PS2_Keyboard    PS2_1(.clk(clk), .rst(rst), .ps2_clk(ps2_clk), .ps2_data(ps2_data), .data_out(data), .ready(ready_keyboard));
    //将键盘传入数据转为ASCII码
    Scan_Code_ASCII PS2_2(.clk(clk), .data(data), .data_out(data_ascii));

    //获取数据和转换ASCII码并存储存在延时,相应为输出转换完成信号延时
    reg [4:0] ready_shift;
    always @ (posedge clk or posedge rst) begin
        if(rst) ready_shift <= 0;
        else ready_shift <= {ready_shift[3:0], ready_keyboard};
    end

    assign ready = ready_shift[4];  //转换ASCII完成

    always @ (posedge ready_shift[2] or posedge rst) begin
        if(rst) begin  //记录ASCII码
            ascii <= 8'h00;
        end else begin
            ascii <= data_ascii;
        end
    end

endmodule
