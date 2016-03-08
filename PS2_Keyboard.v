`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:21 12/22/2015 
// Design Name: 
// Module Name:    PS2_Keyboard 
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
module PS2_Keyboard(
input clk,
input rst,
input ps2_clk,
input ps2_data,
output [9:0] data_out,
output ready
    );

    //获取PS2输入的时钟下降沿
    reg ps2_clk_sign0, ps2_clk_sign1, ps2_clk_sign2, ps2_clk_sign3;
    wire negedge_ps2_clk;
    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            ps2_clk_sign0 <= 1'b0;
            ps2_clk_sign1 <= 1'b0;
            ps2_clk_sign2 <= 1'b0; 
            ps2_clk_sign3 <= 1'b0;
        end
        else begin
            ps2_clk_sign0 <= ps2_clk;
            ps2_clk_sign1 <= ps2_clk_sign0;
            ps2_clk_sign2 <= ps2_clk_sign1; 
            ps2_clk_sign3 <= ps2_clk_sign2;  
        end
    end
    assign negedge_ps2_clk = !ps2_clk_sign0 & !ps2_clk_sign1 & ps2_clk_sign2 & ps2_clk_sign3;

    //PS2传入数据计数器
    reg [3:0] cnt;
    always @(posedge clk or posedge rst) begin
        if(rst)  //重置
            cnt <= 4'd0;
        else if(cnt == 4'd11)
            cnt <= 4'd0;
        else if(negedge_ps2_clk)
            cnt <= cnt + 1'b1;
    end

    //因为计数器存在延时,下降沿相应延时一个时钟
    reg negedge_ps2_clk_shift;
    always @ (posedge clk) begin
        negedge_ps2_clk_shift <= negedge_ps2_clk;
    end

    //记录PS2传入数据
    reg [7:0] data_in;
    always @ (posedge clk or posedge rst) begin
        if(rst)  //重置
            data_in <= 8'd0;
        else if(negedge_ps2_clk_shift) begin  //有限状态机时序读取数据
            case(cnt)
                4'd2 : data_in[0] <= ps2_data;
                4'd3 : data_in[1] <= ps2_data;
                4'd4 : data_in[2] <= ps2_data;
                4'd5 : data_in[3] <= ps2_data;
                4'd6 : data_in[4] <= ps2_data;
                4'd7 : data_in[5] <= ps2_data;
                4'd8 : data_in[6] <= ps2_data;
                4'd9 : data_in[7] <= ps2_data;
                default : data_in <= data_in;
            endcase 
        end else
            data_in <= data_in;
    end

    //处理PS2传入数据
    reg key_break, key_done, key_expand;
    reg [9:0] data;
    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            key_break <= 1'b0;
            data <= 10'd0;
            key_done <= 1'b0;
            key_expand <= 1'b0;
        end else if(cnt == 4'd11) begin
            if(data_in == 8'hE0)  //扩展码
                key_expand <= 1'b1;
            else if(data_in == 8'hF0)
                key_break <= 1'b1;  //断码
            else begin
                data <= {key_expand, key_break, data_in};  //综合数据
                key_done <= 1'b1;
                key_expand <= 1'b0;
                key_break <= 1'b0;
            end  
        end else begin  //保持数据
            data <= data;
            key_done <= 1'b0;
            key_expand <= key_expand;
            key_break <= key_break;
        end
    end

    //传出数据
    assign data_out = data;
    //读取完成信号
    assign ready = key_done;

endmodule
