`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:38 12/17/2015 
// Design Name: 
// Module Name:    VGA_Scan 
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
module VGA_Scan(
    input clk,
    input rst,
    output [9:0] pixel_x,
    output [9:0] pixel_y,
    output HS,
    output VS,
    output video_out
    );
    reg vga_clk;
    reg [9:0] h_count;
    reg [9:0] v_count;

    //25MHz,640*480,VGA扫描时钟
    always @ (posedge clk or posedge rst) begin
        if(rst) vga_clk <= 0;
        else vga_clk <= ~vga_clk;
    end

    //行计数
    always @ (posedge vga_clk or posedge rst) begin
        if(rst) h_count <= 10'h0;
        else if(h_count == 10'd799) h_count <= 10'h0;
        else h_count <= h_count + 10'h1;
    end

    //场计数
    always @ (posedge vga_clk or posedge rst) begin
        if(rst) v_count <= 10'h0;
        else if(h_count == 10'd799) begin
            if(v_count == 10'd524) v_count <= 10'h0;
            else v_count <= v_count + 10'h1;
        end
    end

    //屏幕上x坐标
    assign pixel_x = h_count - 10'd143;

    //屏幕上y坐标
    assign pixel_y = v_count - 10'd34;

    //行同步信号
    assign HS = (h_count >= 10'd96);

    //场同步信号
    assign VS = (v_count >= 10'd2);

    //输出点在屏幕上信号
    assign video_out = (((h_count >= 10'd143) && (h_count < 10'd783)) && ((v_count >= 10'd34) && (v_count < 10'd514)));

endmodule
