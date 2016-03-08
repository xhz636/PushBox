`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:44 01/07/2016 
// Design Name: 
// Module Name:    Read_Index 
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
module Read_Index(
    input clk,
    input rst,
    input read,
    input next,
    output rea,
    output [10:0] VAddr,
    input [7:0] VData,
    output [6:0] index,
    output [63:0] name,
    output is_index,
    output is_rank,
    output is_version,
    output load_next,
    output done
    );

    reg [2:0] timing;      //读取时序
    reg string_end_flag;   //读取结束
    reg rea_flag, done_flag, load_next_flag;
    reg is_index_flag, is_rank_flag, is_version_flag;
    reg [10:0] VAddr_flag;
    reg [7:0] VData_flag;
    reg [6:0] index_flag;  //地图下标
    reg [63:0] name_flag;  //玩家名
    reg [3:0] name_cnt;    //玩家名计数
    assign rea = rea_flag;
    assign VAddr = VAddr_flag;
    assign index = index_flag;
    assign name = name_flag;
    assign is_index = is_index_flag;     //读取地图成功
    assign is_rank = is_rank_flag;       //显示排行榜信号(因时间原因排行榜功能暂不加入)
    assign is_version = is_version_flag; //显示版本信息(因时间原因版本信息功能暂不加入)
    assign load_next = load_next_flag;   //载入下一关信号
    assign done = done_flag;

    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            string_end_flag <= 1;
            VAddr_flag <= 11'd120;
            index_flag <= 0;
            name_flag <= 64'h756e6b6e6f776e00;
            name_cnt <= 0;
            rea_flag <= 0;
            is_index_flag <= 0;
            is_rank_flag <= 0;
            is_version_flag <= 0;
            done_flag <= 1;
            timing <= 0;
        end else if(read | !done_flag) begin  //读取
            if(read) begin
                string_end_flag <= 0;
                VAddr_flag <= 11'd120;
                index_flag <= 0;
                name_flag <= 64'h756e6b6e6f776e00;
                name_cnt <= 0;
                rea_flag <= 0;
                is_index_flag <= 0;
                is_rank_flag <= 0;
                is_version_flag <= 0;
                done_flag <= 0;
                timing <= 0;
            end else begin  //有限状态机实现时序读取输入
                case (timing)
                    3'b000: begin  //读取输入地址
                                rea_flag <= 1;
                                VAddr_flag <= 11'd120;
                                timing <= 3'b001;
                            end
                    3'b001: begin  //延时
                                rea_flag <= 1;
                                VAddr_flag <= VAddr_flag;
                                timing <= 3'b010;
                            end
                    3'b010: begin  //读取输入
                                rea_flag <= 1;
                                VData_flag <= VData;
                                timing <= 3'b011;
                            end
                    3'b011: begin  //判断输入
                                if(VData_flag == 8'h00) begin  //读取结束
                                    string_end_flag <= 1;
                                    //优化输入的非法下标
                                    if(index_flag == 7'd0 || index_flag > 7'd80) index_flag <= 7'd0;
                                    else index_flag <= index_flag - 1;
                                    is_index_flag <= 1;
                                end else if(VData == 8'h20) begin  //下标读取完成进入玩家名读取
                                    VAddr_flag <= VAddr_flag + 1;
                                    name_cnt <= name_cnt + 1;
                                end else if(name_cnt == 0) begin  //读取输入
                                    if(VData_flag >= 8'h30 && VData_flag <= 8'h39) begin  //地图下标
                                        index_flag <= index_flag * 7'd10 + (VData_flag - 8'h30);
                                        VAddr_flag <= VAddr_flag + 1;
                                        is_index_flag <= 1;
                                    end else if(VData_flag == 8'h72) begin  //排行榜(因时间原因该功能暂不加入)
                                        is_rank_flag <= 1;
                                        string_end_flag <= 1;
                                    end else if(VData_flag == 8'h76) begin  //版本信息(因时间原因该功能暂不加入)
                                        is_version_flag <= 1;
                                        string_end_flag <= 1;
                                    end else begin
                                        string_end_flag <= 1;  //读取结束
                                    end
                                end else begin  //有限状态机实现玩家名时序读取
                                    case (name_cnt)
                                        4'd1 : begin
                                                   name_flag[63:56] <= VData_flag;
                                                   name_flag[55:48] <= 8'h00;
                                                   VAddr_flag <= VAddr_flag + 1;
                                                   name_cnt <= name_cnt + 1;
                                               end
                                        4'd2 : begin
                                                   name_flag[55:48] <= VData_flag;
                                                   name_flag[47:40] <= 8'h00;
                                                   VAddr_flag <= VAddr_flag + 1;
                                                   name_cnt <= name_cnt + 1;
                                               end
                                        4'd3 : begin
                                                   name_flag[47:40] <= VData_flag;
                                                   name_flag[39:32] <= 8'h00;
                                                   VAddr_flag <= VAddr_flag + 1;
                                                   name_cnt <= name_cnt + 1;
                                               end
                                        4'd4 : begin
                                                   name_flag[39:32] <= VData_flag;
                                                   name_flag[31:24] <= 8'h00;
                                                   VAddr_flag <= VAddr_flag + 1;
                                                   name_cnt <= name_cnt + 1;
                                               end
                                        4'd5 : begin
                                                   name_flag[31:24] <= VData_flag;
                                                   name_flag[23:16] <= 8'h00;
                                                   VAddr_flag <= VAddr_flag + 1;
                                                   name_cnt <= name_cnt + 1;
                                               end
                                        4'd6 : begin
                                                   name_flag[23:16] <= VData_flag;
                                                   name_flag[15:8] <= 8'h00;
                                                   VAddr_flag <= VAddr_flag + 1;
                                                   name_cnt <= name_cnt + 1;
                                               end
                                        4'd7 : begin
                                                   name_flag[15:8] <= VData_flag;
                                                   name_flag[7:0] <= 8'h00;
                                                   VAddr_flag <= VAddr_flag + 1;
                                                   name_cnt <= name_cnt + 1;
                                               end
                                        4'd8 : begin
                                                   name_flag[7:0] <= VData_flag;
                                                   string_end_flag <= 1;
                                               end
                                    endcase
                                end
                                timing <= 3'b100;
                            end
                    3'b100: begin  //判断结束
                                if(string_end_flag) begin
                                    rea_flag <= 0;
                                    done_flag <= 1;
                                    timing <= 3'b000;
                                end else begin
                                    rea_flag <= 1;
                                    done_flag <= 0;
                                    timing <= 3'b001;
                                end
                            end
                endcase
            end
        end else if(next) begin  //载入下一关
            if(index_flag < 7'd80) begin
                index_flag <= index_flag + 1;
                load_next_flag <= 1;
            end
        end else begin
            load_next_flag <= 0;
        end
    end

endmodule
