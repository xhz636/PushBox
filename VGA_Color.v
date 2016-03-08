`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:02 12/17/2015 
// Design Name: 
// Module Name:    VGA_Color 
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
module VGA_Color(
    input mode,
    input [2:0] GColor,
    input VColor,
    output reg VGA_R,
    output reg VGA_G,
    output reg VGA_B
    );

    always @ * begin  //转换VGA颜色数据
        if(mode == 0) begin  //输入模式为黑白
            VGA_R <= VColor;
            VGA_G <= VColor;
            VGA_B <= VColor;
        end else begin  //游戏模式为3位色
            VGA_R <= GColor[2];
            VGA_G <= GColor[1];
            VGA_B <= GColor[0];
        end
    end

endmodule
