`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:30:20 01/06/2016 
// Design Name: 
// Module Name:    VRAM_Input 
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
module VRAM_Input(
    input clk,
    input rst,
    input data_in,
    input [7:0] ascii,
    output wea,
    output [10:0] VAddr,
    output [7:0] VData,
    output done
    );

    reg [1:0] timing;  //写入时序
    reg wea_flag, done_flag;
    reg [10:0] Addr;
    reg [7:0] VDout;
    assign wea = wea_flag;
    assign VAddr = Addr;
    assign VData = VDout;
    assign done = done_flag;

    always @ (negedge clk or posedge rst) begin
        if(rst) begin  //重置
            timing <= 2'b00;
            wea_flag <= 0;
            Addr <= 11'd120;
            VDout <= 0;
            done_flag <= 1;
        end else if(data_in | !done_flag) begin  //有限状态机时序写入数据
            if(data_in) done_flag <= 0;
            else begin
                case (timing)
                    2'b00 : if(ascii == 8'h08) begin  //退格
                                if(Addr > 11'd120) Addr <= Addr - 1;
                                VDout <= 8'h00;
                                wea_flag <= 0;
                                done_flag <= 0;
                                timing <= 2'b01;
                            end else begin  //输入
                                Addr <= Addr;
                                VDout <= ascii;
                                wea_flag <= 1;
                                done_flag <= 0;
                                timing <= 2'b01;
                            end
                    2'b01 : if(ascii == 8'h08) begin  //退格清除
                                Addr <= Addr;
                                VDout <= 8'h00;
                                wea_flag <= 1;
                                done_flag <= 0;
                                timing <= 2'b10;
                            end else begin  //输入写入
                                Addr <= Addr;
                                VDout <= ascii;
                                wea_flag <= 0;
                                done_flag <= 0;
                                timing <= 2'b10;
                            end
                    2'b10 : if(ascii == 8'h08) begin  //退格完成
                                Addr <= Addr;
                                VDout <= 8'h00;
                                wea_flag <= 0;
                                done_flag <= 1;
                                timing <= 2'b00;
                            end else begin  //输入完成
                                Addr <= Addr + 1;
                                VDout <= ascii;
                                wea_flag <= 0;
                                done_flag <= 1;
                                timing <= 2'b00;
                            end
                endcase
            end
        end
    end

endmodule
