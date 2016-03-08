`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:29 12/23/2015 
// Design Name: 
// Module Name:    Scan_Code_ASCII 
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
module Scan_Code_ASCII(
    input clk,
    input [9:0] data,
    output [7:0] data_out
    );

    reg [7:0] data_ascii;

    //键盘扫描码
    parameter Scan_Space = 8'h29;
    parameter Scan_Enter = 8'h5A;
    parameter Scan_Back = 8'h66;
    parameter Scan_Esc = 8'h76;
    parameter Scan_0 = 8'h45;
    parameter Scan_1 = 8'h16;
    parameter Scan_2 = 8'h1E;
    parameter Scan_3 = 8'h26;
    parameter Scan_4 = 8'h25;
    parameter Scan_5 = 8'h2E;
    parameter Scan_6 = 8'h36;
    parameter Scan_7 = 8'h3D;
    parameter Scan_8 = 8'h3E;
    parameter Scan_9 = 8'h46;
    parameter Scan_A = 8'h1C;
    parameter Scan_B = 8'h32;
    parameter Scan_C = 8'h21;
    parameter Scan_D = 8'h23;
    parameter Scan_E = 8'h24;
    parameter Scan_F = 8'h2B;
    parameter Scan_G = 8'h34;
    parameter Scan_H = 8'h33;
    parameter Scan_I = 8'h43;
    parameter Scan_J = 8'h3B;
    parameter Scan_K = 8'h42;
    parameter Scan_L = 8'h4B;
    parameter Scan_M = 8'h3A;
    parameter Scan_N = 8'h31;
    parameter Scan_O = 8'h44;
    parameter Scan_P = 8'h4D;
    parameter Scan_Q = 8'h15;
    parameter Scan_R = 8'h2D;
    parameter Scan_S = 8'h1B;
    parameter Scan_T = 8'h2C;
    parameter Scan_U = 8'h3C;
    parameter Scan_V = 8'h2A;
    parameter Scan_W = 8'h1D;
    parameter Scan_X = 8'h22;
    parameter Scan_Y = 8'h35;
    parameter Scan_Z = 8'h1A;
    parameter Scan_Right = 8'h74;
    parameter Scan_Left = 8'h6B;
    parameter Scan_Up = 8'h75;
    parameter Scan_Down = 8'h72;

    //转换为ASCII码
    always @ (posedge clk) begin
        if(!data[9] & !data[8]) begin  //非扩展通码
            case (data[7:0])
                Scan_Space : data_ascii <= 8'h20;
                Scan_Enter : data_ascii <= 8'h0D;
                Scan_Back : data_ascii <= 8'h08;
                Scan_Esc : data_ascii <= 8'h1B;
                Scan_0 : data_ascii <= 8'h30;
                Scan_1 : data_ascii <= 8'h31;
                Scan_2 : data_ascii <= 8'h32;
                Scan_3 : data_ascii <= 8'h33;
                Scan_4 : data_ascii <= 8'h34;
                Scan_5 : data_ascii <= 8'h35;
                Scan_6 : data_ascii <= 8'h36;
                Scan_7 : data_ascii <= 8'h37;
                Scan_8 : data_ascii <= 8'h38;
                Scan_9 : data_ascii <= 8'h39;
                Scan_A : data_ascii <= 8'h61;
                Scan_B : data_ascii <= 8'h62;
                Scan_C : data_ascii <= 8'h63;
                Scan_D : data_ascii <= 8'h64;
                Scan_E : data_ascii <= 8'h65;
                Scan_F : data_ascii <= 8'h66;
                Scan_G : data_ascii <= 8'h67;
                Scan_H : data_ascii <= 8'h68;
                Scan_I : data_ascii <= 8'h69;
                Scan_J : data_ascii <= 8'h6A;
                Scan_K : data_ascii <= 8'h6B;
                Scan_L : data_ascii <= 8'h6C;
                Scan_M : data_ascii <= 8'h6D;
                Scan_N : data_ascii <= 8'h6E;
                Scan_O : data_ascii <= 8'h6F;
                Scan_P : data_ascii <= 8'h70;
                Scan_Q : data_ascii <= 8'h71;
                Scan_R : data_ascii <= 8'h72;
                Scan_S : data_ascii <= 8'h73;
                Scan_T : data_ascii <= 8'h74;
                Scan_U : data_ascii <= 8'h75;
                Scan_V : data_ascii <= 8'h76;
                Scan_W : data_ascii <= 8'h77;
                Scan_X : data_ascii <= 8'h78;
                Scan_Y : data_ascii <= 8'h79;
                Scan_Z : data_ascii <= 8'h7A;
                default : data_ascii <= 8'h00;
            endcase
        end else if(data[9] & !data[8]) begin  //扩展通码
            case (data[7:0])
                Scan_Right : data_ascii <= 8'h1C;
                Scan_Left : data_ascii <= 8'h1D;
                Scan_Up : data_ascii <= 8'h1E;
                Scan_Down : data_ascii <= 8'h1F;
                default : data_ascii <= 8'h00;
            endcase
        end else data_ascii <= data_ascii;  //保持数据
    end

    assign data_out = data_ascii;

endmodule
