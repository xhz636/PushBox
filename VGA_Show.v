`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:53 01/05/2016 
// Design Name: 
// Module Name:    VGA_Show 
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
module VGA_Show(
    input clk,
    input rst,
    input mode,
    input Vwea,
    input Gwea,
    input Vrea,
    input Grea,
    input [10:0] VAddr_w,
    input [8:0] GAddr_w,
    input [7:0] VData_in,
    input [3:0] GData_in,
    output [7:0] VData_out,
    output [3:0] GData_out,
    output VGA_R,
    output VGA_G,
    output VGA_B,
    output HS,
    output VS
    );

    wire [9:0] pixel_x;
    wire [9:0] pixel_y;
    wire video_out;
    wire [2:0] GColor;
    wire [15:0] VColor;
    wire VColor_1bit;
    wire [2:0] GColor_in;
    wire VColor_in;
    wire [10:0] VAddr;
    wire [8:0] GAddr;
    wire [10:0] VAddr_VGA;
    wire [8:0] GAddr_VGA;
    wire [9:0] ASCII_Addr;
    wire [13:0] Picture_Addr;
    wire [5:0] ascii_offset;

    //输入模式下当前输入位置闪烁计时
    reg [24:0] cnt;
    reg blink;
    always @ (posedge clk or posedge rst) begin
        if(rst) begin
            cnt <= 0;
            blink <= 0;
        end else if(cnt == 25'd25000000) begin
            blink <= ~blink;
            cnt <= 0;
        end else begin
            cnt <= cnt + 1;
        end
    end

    //VGA扫描信号发生器
    VGA_Scan    VGA1(.clk(clk), .rst(rst), .pixel_x(pixel_x), .pixel_y(pixel_y), .HS(HS), .VS(VS), .video_out(video_out));

    //VGA颜色输出转换器
    VGA_Color   VGA2(.mode(mode), .GColor(GColor_in), .VColor(VColor_in), .VGA_R(VGA_R), .VGA_G(VGA_G), .VGA_B(VGA_B));

    //输入模式单点颜色
    assign VColor_1bit = (VData_out == 8'h00 | VData_out == 8'h20) ? 1'b0 : VColor[15 - pixel_x[3:0]];

    //读写时不显示,非读写显示对应颜色
    assign VColor_in = (Vwea & Vrea) ? 1'b0 : (VAddr_VGA == VAddr_w) ? blink : VColor_1bit;
    assign GColor_in = (Gwea & Grea) ? 3'b000 : GColor;

    //VGA中(x,y)坐标对应RAM地址
    assign VAddr_VGA = (pixel_y >> 4) * 6'd40 + (pixel_x - 1 >> 4);  //因为颜色解码原因需偏移一个像素方可显示正确
    assign GAddr_VGA = (pixel_y >> 5) * 5'd20 + (pixel_x >> 5);

    //读写时RAM选择地址
    assign VAddr = (Vwea | Vrea) ? VAddr_w : VAddr_VGA;
    assign GAddr = (Gwea | Grea) ? GAddr_w : GAddr_VGA;

    //VRAM存储,修改,获取输入模式下内容
    VRAM        RAM1(.clka(clk), .wea(Vwea), .addra(VAddr), .dina(VData_in), .douta(VData_out));

    //GRAM存储,修改,获取游戏模式下内容
    GRAM        RAM2(.clka(clk), .wea(Gwea), .addra(GAddr), .dina(GData_in), .douta(GData_out));

    //ASCII码在ROM内的地址
    assign ascii_offset = (VData_out < 8'h40) ? (VData_out - 8'h30) : (VData_out - 8'h57);

    //对应(x,y)点在ROM内数据
    assign ASCII_Addr = {ascii_offset[5:0], 4'd0} + pixel_y[3:0];
    assign Picture_Addr = {GData_out[3:0], 10'd0} + {pixel_y[4:0], 5'd0} + pixel_x[4:0];

    //数字,小写字符发生器
    ASCII       ROM1(.clka(clk), .addra(ASCII_Addr), .douta(VColor));

    //地图贴图发生器
    Picture     ROM2(.clka(clk), .addra(Picture_Addr), .douta(GColor));

endmodule
