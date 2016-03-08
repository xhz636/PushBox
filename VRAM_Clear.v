`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:25:48 01/06/2016 
// Design Name: 
// Module Name:    VRAM_Clear 
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
module VRAM_Clear(
    input clk,
    input rst,
    input clear,
    output wea,
    output [10:0] VAddr,
    output [7:0] VData,
    output done
    );

    reg [10:0] Addr;
    reg wea_flag, done_flag;
    assign wea = wea_flag;
    assign VAddr = Addr;
    assign VData = 8'h00;
    assign done = done_flag;

    always @ (negedge clk or posedge rst) begin
        if(rst) begin  //重置
            wea_flag <= 0;
            Addr <= 11'd120;
            done_flag <= 1;
        end else if(clear | !done_flag) begin  //清除
            if(done_flag) begin
                done_flag <= 0;
                Addr <= 11'd120;
                wea_flag <= 1;
            end else if(Addr == 11'd1200) begin  //清除完毕
                done_flag <= 1;
                Addr <= 11'd120;
                wea_flag <= 0;
            end else begin  //清除对应地址数据
                done_flag <= 0;
                Addr <= Addr + 1;
                wea_flag <= 1;
            end
        end
    end

endmodule
