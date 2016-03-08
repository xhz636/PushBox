`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:46 01/06/2016 
// Design Name: 
// Module Name:    Load_Level 
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
module Load_Level(
    input clk,
    input rst,
    input load,
    input [6:0] index,
    output wea,
    output [8:0] GAddr,
    output [3:0] GData,
    output done,
    output [7:0] hole,
    output [8:0] person
    );

    reg [7:0] hole_cnt;       //剩余洞数
    reg [8:0] Person_Addr;    //人物坐标
    assign hole = hole_cnt;
    assign person = Person_Addr;
    wire [14:0] Level_Addr;
    wire [3:0] Level_Data;
    reg [14:0] Addr_offset;   //地图坐标在ROM内的偏移
    reg [8:0] Addr;           //写入物体在GRAM的坐标
    reg wea_flag, done_flag;
    assign wea = wea_flag;
    assign GAddr = Addr - 1;  //读取地图有延时,故写入地址相应延时一个时钟
    assign GData = Level_Data;
    assign done = done_flag;

    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            hole_cnt <= 0;
            Person_Addr <= 0;
        end else if(load) begin  //载入
            hole_cnt <= 0;
            Person_Addr <= 0;
        end else if(!done_flag) begin  //记录人物坐标和剩余洞数
            if(GData == 4'd4) begin
                Person_Addr <= GAddr;
            end else if(GData == 4'd6) begin
                hole_cnt <= hole_cnt + 6'd1;
            end
        end
    end

    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            wea_flag <= 0;
            Addr <= 0;
            done_flag <= 1;
            Addr_offset <= 0;
        end else if(load | !done_flag) begin  //载入
            if(done_flag) begin
                done_flag <= 0;
                Addr <= 0;
                wea_flag <= 1;
                Addr_offset <= index * 9'd300;  //计算地图在ROM内下标
            end else if(Addr == 9'd300) begin  //写入完成
                done_flag <= 1;
                Addr <= 0;
                wea_flag <= 0;
                Addr_offset <= 0;
            end else begin  //写入地图
                done_flag <= 0;
                Addr <= Addr + 1;
                wea_flag <= 1;
                Addr_offset <= Addr_offset;
            end
        end
    end

    assign Level_Addr = Addr_offset + Addr;  //当前地图对应坐标

    //读取ROM内的地图数据
    Level    LM1(.clka(clk), .addra(Level_Addr), .douta(Level_Data));

endmodule
