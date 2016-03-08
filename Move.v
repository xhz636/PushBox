`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:23 01/06/2016 
// Design Name: 
// Module Name:    Move 
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
module Move(
    input clk,
    input rst,
    input load,
    input [7:0] hole,
    input [8:0] person,
    input move,
    input [1:0] direction,
    output rea,
    output [8:0] GAddr_r,
    input [3:0] GData_r,
    output wea,
    output [8:0] GAddr_w,
    output [3:0] GData_w,
    output [15:0] step,
    output done,
    output win
    );

    parameter Move_Up = 2'b00;    //移动方向向上
    parameter Move_Down = 2'b01;  //移动方向向下
    parameter Move_Left = 2'b10;  //移动方向向左
    parameter Move_Right = 2'b11; //移动方向向右

    parameter Pic_Person = 4'd4;  //人物贴图下标
    parameter Pic_Road = 4'd5;    //道路贴图下标
    parameter Pic_Hole = 4'd6;    //洞贴图下标
    parameter Pic_Boxout = 4'd8;  //未进洞箱子贴图下标
    parameter Pic_Boxin = 4'd9;   //进洞箱子贴图下标

    parameter Move_Road = 3'b000;         //人物移动到道路上
    parameter Move_Hole = 3'b001;         //人物移动到洞上
    parameter Move_Boxout_Road = 3'b010;  //移动未进洞箱子到道路上
    parameter Move_Boxout_Hole = 3'b011;  //移动未进洞箱子到洞上
    parameter Move_Boxin_Road = 3'b100;   //移动进洞箱子到道路上
    parameter Move_Boxin_Hole = 3'b101;   //移动进洞箱子到洞上
    parameter Move_Fail = 3'b110;         //移动失败

    reg [7:0] hole_cnt;         //剩余洞数
    reg [8:0] Person_Addr;      //人物坐标
    reg [2:0] read_timing;      //读取时序,读取判断能否移动
    reg [2:0] write_timing;     //写入时序,写入移动后的结果
    reg rea_flag, wea_flag, read_done_flag, move_done_flag, win_flag;
    reg [1:0] direction_flag;   //移动方向
    reg [8:0] GAddr_r_flag;
    reg [8:0] GAddr_w_flag;
    reg [3:0] GData_w_flag;
    reg [15:0] step_flag;       //移动步数
    reg [3:0] one_step;         //记录移动前方一格的物体
    reg [3:0] two_step;         //记录移动前方两个的物体
    reg step_read_done;         //读取前方物体完毕
    reg can_move;               //能移动
    reg [2:0] move_case;        //移动情况判断
    reg stand_in_hole_now, stand_in_hole_next;    //人物是否在洞上的处理
    assign rea = rea_flag;
    assign wea = wea_flag;
    assign done = read_done_flag & move_done_flag;
    assign win = win_flag;
    assign GAddr_r = GAddr_r_flag;
    assign GAddr_w = GAddr_w_flag;
    assign GData_w = GData_w_flag;
    assign step = step_flag;

    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            one_step <= 0;
            two_step <= 0;
            step_read_done <= 0;
            rea_flag <= 0;
            read_done_flag <= 1;
        end else if (load) begin  //载入
            step_read_done <= 0;
            rea_flag <= 0;
            read_done_flag <= 1;
        end else if (move | !read_done_flag) begin
            if(move) begin  //移动信号记录方向
                read_done_flag <= 0;
                direction_flag <= direction;
                step_read_done <= 0;
                read_timing <= 0;
            end else begin
                case (read_timing)  //有限状态机实现时序读取人物前方物体
                    3'b000: begin
                                rea_flag <= 1;
                                case (direction_flag)  //前方一格物体坐标
                                    Move_Up   : GAddr_r_flag <= Person_Addr - 9'd20;
                                    Move_Down : GAddr_r_flag <= Person_Addr + 9'd20;
                                    Move_Left : GAddr_r_flag <= Person_Addr - 9'd1;
                                    Move_Right: GAddr_r_flag <= Person_Addr + 9'd1;
                                endcase
                                step_read_done <= 0;
                                read_timing <= 3'b001;
                            end
                    3'b001: begin  //延时
                                rea_flag <= 1;
                                step_read_done <= 0;
                                read_timing <= 3'b010;
                            end
                    3'b010: begin  //读取物体
                                one_step <= GData_r;
                                rea_flag <= 1;
                                step_read_done <= 0;
                                read_timing <= 3'b011;
                            end
                    3'b011: begin
                                rea_flag <= 1;
                                case (direction_flag)  //前方两格物体坐标
                                    Move_Up   : GAddr_r_flag <= Person_Addr - 9'd40;
                                    Move_Down : GAddr_r_flag <= Person_Addr + 9'd40;
                                    Move_Left : GAddr_r_flag <= Person_Addr - 9'd2;
                                    Move_Right: GAddr_r_flag <= Person_Addr + 9'd2;
                                endcase
                                step_read_done <= 0;
                                read_timing <= 3'b100;
                            end
                    3'b100: begin  //延时
                                rea_flag <= 1;
                                step_read_done <= 0;
                                read_timing <= 3'b101;
                            end
                    3'b101: begin  //读取物体
                                two_step <= GData_r;
                                rea_flag <= 1;
                                step_read_done <= 0;
                                read_timing <= 3'b110;
                            end
                    3'b110: begin  //读取完毕信号
                                rea_flag <= 0;
                                step_read_done <= 1;
                                read_timing <= 3'b111;
                            end
                    3'b111: begin  //复位
                                rea_flag <= 0;
                                step_read_done <= 0;
                                read_done_flag <= 1;
                                read_timing <= 3'b000;
                            end
                endcase
            end
        end
    end

    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            Person_Addr <= person;
            wea_flag <= 0;
            can_move <= 0;
            step_flag <= 0;
            move_done_flag <= 1;
            stand_in_hole_now <= 0;
            hole_cnt <= 8'h7F;
        end else if(load) begin  //载入
            Person_Addr <= person;
            wea_flag <= 0;
            can_move <= 0;
            step_flag <= 0;
            move_done_flag <= 1;
            stand_in_hole_now <= 0;
            hole_cnt <= hole;
        end else if(step_read_done | !move_done_flag) begin
            if(move_done_flag) begin  //判断移动情况,更新剩余洞数及人物是否在洞上
                move_done_flag <= 0;
                if(one_step == Pic_Road) begin
                    move_case <= Move_Road;
                    stand_in_hole_next <= 0;
                    hole_cnt <= hole_cnt;
                    can_move <= 1;
                end else if(one_step == Pic_Hole) begin
                    move_case <= Move_Hole;
                    stand_in_hole_next <= 1;
                    hole_cnt <= hole_cnt;
                    can_move <= 1;
                end else if(one_step == Pic_Boxout && two_step == Pic_Road) begin
                    move_case <= Move_Boxout_Road;
                    stand_in_hole_next <= 0;
                    hole_cnt <= hole_cnt;
                    can_move <= 1;
                end else if(one_step == Pic_Boxout && two_step == Pic_Hole) begin
                    move_case <= Move_Boxout_Hole;
                    stand_in_hole_next <= 0;
                    hole_cnt <= hole_cnt - 1;
                    can_move <= 1;
                end else if(one_step == Pic_Boxin && two_step == Pic_Road) begin
                    move_case <= Move_Boxin_Road;
                    stand_in_hole_next <= 1;
                    hole_cnt <= hole_cnt + 1;
                    can_move <= 1;
                end else if(one_step == Pic_Boxin && two_step == Pic_Hole) begin
                    move_case <= Move_Boxin_Hole;
                    stand_in_hole_next <= 1;
                    hole_cnt <= hole_cnt;
                    can_move <= 1;
                end else begin
                    move_case <= Move_Fail;
                    stand_in_hole_next <= stand_in_hole_now;
                    can_move <= 0;
                end
                write_timing <= 0;
            end else if(can_move) begin
                case (write_timing)  //有限状态机实现时序移动后物体写入
                    3'b000: begin  //移动前人物坐标处处理
                                wea_flag <= 0;
                                GAddr_w_flag <= Person_Addr;
                                if(stand_in_hole_now) GData_w_flag <= Pic_Hole;
                                else GData_w_flag <= Pic_Road;
                                write_timing <= 3'b001;
                            end
                    3'b001: begin  //延时
                                wea_flag <= 1;
                                write_timing <= 3'b010;
                            end
                    3'b010: begin  //移动方向一格处处理
                                wea_flag <= 0;
                                case (direction_flag)
                                    Move_Up   : GAddr_w_flag <= Person_Addr - 9'd20;
                                    Move_Down : GAddr_w_flag <= Person_Addr + 9'd20;
                                    Move_Left : GAddr_w_flag <= Person_Addr - 9'd1;
                                    Move_Right: GAddr_w_flag <= Person_Addr + 9'd1;
                                endcase
                                GData_w_flag <= Pic_Person;
                                write_timing <= 3'b011;
                            end
                    3'b011: begin  //延时
                                wea_flag <= 1;
                                write_timing <= 3'b100;
                            end
                    3'b100: begin  //移动方向两格处处理
                                wea_flag <= 0;
                                case (direction_flag)
                                    Move_Up   : GAddr_w_flag <= Person_Addr - 9'd40;
                                    Move_Down : GAddr_w_flag <= Person_Addr + 9'd40;
                                    Move_Left : GAddr_w_flag <= Person_Addr - 9'd2;
                                    Move_Right: GAddr_w_flag <= Person_Addr + 9'd2;
                                endcase
                                case (move_case)
                                    Move_Road : begin write_timing <= 3'b110; end
                                    Move_Hole : begin write_timing <= 3'b110; end
                                    Move_Boxout_Road: begin GData_w_flag <= Pic_Boxout; write_timing <= 3'b101; end
                                    Move_Boxout_Hole: begin GData_w_flag <= Pic_Boxin;  write_timing <= 3'b101; end
                                    Move_Boxin_Road : begin GData_w_flag <= Pic_Boxout; write_timing <= 3'b101; end
                                    Move_Boxin_Hole : begin GData_w_flag <= Pic_Boxin;  write_timing <= 3'b101; end
                                endcase
                            end
                    3'b101: begin  //延时
                                wea_flag <= 1;
                                write_timing <= 3'b110;
                            end
                    3'b110: begin  //更新人物坐标
                                wea_flag <= 0;
                                case (direction_flag)
                                    Move_Up   : Person_Addr <= Person_Addr - 9'd20;
                                    Move_Down : Person_Addr <= Person_Addr + 9'd20;
                                    Move_Left : Person_Addr <= Person_Addr - 9'd1;
                                    Move_Right: Person_Addr <= Person_Addr + 9'd1;
                                endcase
                                //记录步数的BCD码计算
                                if(step_flag == 16'b1001100110011001) begin
                                    step_flag <= 0;
                                end else if(step_flag[11:0] == 12'b100110011001) begin
                                    step_flag[11:0] <= 12'd0;
                                    step_flag[15:12] <= step_flag[15:12] + 4'd1;
                                end else if(step_flag[7:0] == 8'b10011001) begin
                                    step_flag[7:0] <= 8'd0;
                                    step_flag[11:8] <= step_flag[11:8] + 4'd1;
                                end else if(step_flag[3:0] == 4'b1001) begin
                                    step_flag[3:0] <= 4'd0;
                                    step_flag[7:4] <= step_flag[7:4] + 4'd1;
                                end else begin
                                    step_flag <= step_flag + 1;
                                end
                                can_move <= 0;
                                stand_in_hole_now <= stand_in_hole_next;
                                move_done_flag <= 1;
                                write_timing <= 3'b000;
                            end
                endcase
            end else begin  //移动完成
                move_done_flag <= 1;
            end
        end
    end

    //判断是否过关
    always @ (posedge clk) begin
        if(hole_cnt == 8'h00) win_flag <= 1;
        else win_flag <= 0;
    end

endmodule
