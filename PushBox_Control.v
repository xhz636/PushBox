`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:33 01/05/2016 
// Design Name: 
// Module Name:    PushBox_Control 
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
module PushBox_Control(
    input clk,
    input rst,
    input ps2_clk,
    input ps2_data,
    output VGA_R,
    output VGA_G,
    output VGA_B,
    output HS,
    output VS,
    output [3:0] AN,
    output [7:0] SEGMENT
    );

    parameter Move_Up = 2'b00;   //定义向上移动
    parameter Move_Down = 2'b01; //定义向下移动
    parameter Move_Left = 2'b10; //定义向左移动
    parameter Move_Right = 2'b11;//定义向右移动

    parameter Key_Enter = 8'h0D; //回车键ASCII码
    parameter Key_Back = 8'h08;  //退格键ASCII码
    parameter Key_Esc = 8'h1B;   //退出键ASCII码
    parameter Key_Up = 8'h1E;    //方向键上ASCII码
    parameter Key_Down = 8'h1F;  //方向键下ASCII码
    parameter Key_Left = 8'h1D;  //方向键左ASCII码
    parameter Key_Right = 8'h1C; //方向键右ASCII码

    wire key_break;    //键盘断码
    wire ready, mode;  //键盘信号,界面模式
    wire [7:0] ascii;  //键盘输入ASCII码
    reg mode_flag;
    assign mode = mode_flag;

    reg exit_map;
    wire exit;    //退出游戏界面
    assign exit = exit_map;
    reg input_flag, clear_flag;
    wire input_in, clear_in;      //输入信号,清除信号
    assign input_in = input_flag;
    assign clear_in = clear_flag;
    
    reg index_flag, move_flag, restart_flag;
    wire index_in, move_in, restart;  //成功读取地图下标信号,移动信号,重新开始信号
    assign index_in = index_flag;
    assign move_in = move_flag;
    assign restart = restart_flag;
    reg [1:0] direction_flag;         //移动方向
    wire [1:0] GRAM_Move_direction_in;
    assign GRAM_Move_direction_in = direction_flag;

    //重置时模式延迟信号,因为重置时不知道什么原因,会直接进入推箱子第二关,而重新开始的下标变为第三关,通过延时转回输入模式
    reg [19:0] mode_shift;

    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //重置
            exit_map <= 0;
            input_flag <= 0;
            clear_flag <= 0;
            index_flag <= 0;
            move_flag <= 0;
            restart_flag <= 0;
            mode_shift <= 1;
        end else if(ready & !key_break)begin  //读取按键且不为断码
            if(mode_flag == 0) begin  //输入模式
                if(ascii >= 8'h20 || ascii == Key_Back) begin  //字母,数字或退格
                    input_flag <= 1;  //输入ASCII
                    clear_flag <= 0;
                end else if(ascii == Key_Enter) begin
                    input_flag <= 0;
                    clear_flag <= 0;
                    index_flag <= 1;  //载入下标
                end else if(ascii == Key_Esc) begin
                    clear_flag <= 1;  //清空输入
                end
            end else begin  //游戏模式
                case (ascii)
                    Key_Enter : begin restart_flag <= 1; end  //重新开始
                    Key_Esc   : begin exit_map <= 1; end      //退出游戏模式
                    Key_Up    : begin move_flag <= 1; direction_flag <= Move_Up; end    //向上移动
                    Key_Down  : begin move_flag <= 1; direction_flag <= Move_Down; end  //向下移动
                    Key_Left  : begin move_flag <= 1; direction_flag <= Move_Left; end  //向左移动
                    Key_Right : begin move_flag <= 1; direction_flag <= Move_Right; end //向右移动
                endcase
            end
        end else if(mode_shift != 0) begin
            mode_shift <= mode_shift + 1;  //延时重置信号,返回输入模式
            if(mode_shift == 19'd500000) exit_map <= 1;
        end else begin
            input_flag <= 0;
            clear_flag <= 0;
            index_flag <= 0;
            move_flag <= 0;
            exit_map <= 0;
            restart_flag <= 0;
        end
    end

    //VRAM写使能输入线
    wire VRAM_Clear_wea_out;
    wire VRAM_Input_wea_out;
    wire VGA_Vwea_in;
    assign VGA_Vwea_in = VRAM_Input_wea_out | VRAM_Clear_wea_out;

    //VRAM读使能输入线
    wire Read_Index_rea_out;
    wire VGA_Vrea_in;
    assign VGA_Vrea_in = Read_Index_rea_out;

    //VRAM地址输入线
    wire [10:0] VRAM_Clear_VAddr_out;
    wire [10:0] VRAM_Input_VAddr_out;
    wire [10:0] Read_Index_VAddr_out;
    wire [10:0] VGA_VAddr_in;
    assign VGA_VAddr_in = VRAM_Input_wea_out ? VRAM_Input_VAddr_out :
                          VRAM_Clear_wea_out ? VRAM_Clear_VAddr_out :
                          Read_Index_rea_out ? Read_Index_VAddr_out :
                          VRAM_Input_VAddr_out;

    //VRAM数据输入线
    wire [7:0] VRAM_Clear_VData_out;
    wire [7:0] VRAM_Input_VData_out;
    wire [7:0] VGA_VData_in;
    assign VGA_VData_in = VRAM_Input_wea_out ? VRAM_Input_VData_out :
                          VRAM_Clear_wea_out ? VRAM_Clear_VData_out :
                          8'h00;

    //RAM读写完成信号
    wire VRAM_Clear_done_out;
    wire VRAM_Input_done_out;
    wire GRAM_Load_done_out;
    wire GRAM_Move_done_out;
    wire done;
    assign done = VRAM_Input_done_out | VRAM_Clear_done_out | GRAM_Load_done_out | GRAM_Move_done_out;

    //VRAM数据输出线
    wire [7:0] Read_Index_VData_in;
    wire [7:0] VGA_VData_out;
    assign Read_Index_VData_in = VGA_VData_out;

    //GRAM读使能输入线
    wire GRAM_Move_rea_out;
    wire VGA_Grea_in;
    assign VGA_Grea_in = GRAM_Move_rea_out;

    //GRAM写使能输入线
    wire GRAM_Load_wea_out;
    wire GRAM_Move_wea_out;
    wire VGA_Gwea_in;
    assign VGA_Gwea_in = GRAM_Load_wea_out | GRAM_Move_wea_out;

    //GRAM地址输入线
    wire [8:0] GRAM_Load_GAddr_out;
    wire [8:0] GRAM_Move_GAddr_r_out;
    wire [8:0] GRAM_Move_GAddr_w_out;
    wire [8:0] VGA_GAddr_in;
    assign VGA_GAddr_in = GRAM_Load_wea_out ? GRAM_Load_GAddr_out :
                          GRAM_Move_rea_out ? GRAM_Move_GAddr_r_out :
                          GRAM_Move_wea_out ? GRAM_Move_GAddr_w_out :
                          9'd0;

    //GRAM数据输入线
    wire [3:0] GRAM_Load_GData_out;
    wire [3:0] GRAM_Move_GData_w_out;
    wire [3:0] VGA_GData_in;
    assign VGA_GData_in = GRAM_Load_wea_out ? GRAM_Load_GData_out :
                          GRAM_Move_wea_out ? GRAM_Move_GData_w_out :
                          4'h0;

    //GRAM数据输出线
    wire [3:0] GRAM_Move_GData_r_in;
    wire [3:0] VGA_GData_out;
    assign GRAM_Move_GData_r_in = VGA_GData_out;

    //获取载入地图信号上升沿
    reg [1:0] Load_done_sign;
    always @ (posedge clk or posedge rst) begin
        if(rst) Load_done_sign <= 0;
        else Load_done_sign <= {Load_done_sign[0], GRAM_Load_done_out};
    end
    wire load_done_posedge;
    assign load_done_posedge = !Load_done_sign[1] & Load_done_sign[0];

    //清除输入模块
    //清空VRAM内输入的内容
    VRAM_Clear   VRAM_1(.clk(clk),
                        .rst(rst),
                        .clear(clear_in | load_done_posedge),
                        .wea(VRAM_Clear_wea_out),
                        .VAddr(VRAM_Clear_VAddr_out),
                        .VData(VRAM_Clear_VData_out),
                        .done(VRAM_Clear_done_out)
                        );

    //获取清除完成信号上升沿
    reg [1:0] clear_sign;
    wire clear_posedge;
    always @ (posedge clk or posedge rst) begin
        if(rst) clear_sign <= 2'b00;
        else clear_sign <= {clear_sign[0], VRAM_Clear_done_out};
    end
    assign clear_posedge = !clear_sign[1] & clear_sign[0];

    //输入模块
    //通过判断ASCII对VRAM内的内容进行修改
    VRAM_Input   VRAM_2(.clk(clk),
                        .rst(rst | clear_posedge),
                        .data_in(input_in),
                        .ascii(ascii),
                        .wea(VRAM_Input_wea_out),
                        .VAddr(VRAM_Input_VAddr_out),
                        .VData(VRAM_Input_VData_out),
                        .done(VRAM_Input_done_out)
                        );

    //读取地图下标输出线
    wire [6:0] Read_Index_map_out;
    wire [6:0] Load_Level_map_in;
    assign Load_Level_map_in = Read_Index_map_out;
    wire Read_Index_is_index_out;
    wire Read_Index_done_out;

    //获取读取地图下标完成信号上升沿
    reg [1:0] Read_done_sign;
    always @ (posedge clk or posedge rst) begin
        if(rst) Read_done_sign <= 0;
        else Read_done_sign <= {Read_done_sign[0], Read_Index_done_out};
    end
    wire read_done_posedge;
    assign read_done_posedge = !Read_done_sign[1] & Read_done_sign[0];

    //载入地图信号
    wire load_in;
    assign load_in = read_done_posedge & Read_Index_is_index_out;

    //获取过关信号上升沿
    wire win_out;
    reg [1:0] win_out_sign;
    always @ (posedge clk or posedge rst) begin
        if(rst) win_out_sign <= 0;
        else win_out_sign <= {win_out_sign[0], win_out};
    end
    wire win_posedge;
    assign win_posedge = !win_out_sign[1] & win_out_sign[0];

    //载入下一关输入输出信号
    wire Read_Index_load_next_out;
    wire Load_Level_load_next_in;
    assign Load_Level_load_next_in = Read_Index_load_next_out;

    //读取输入地图下标模块
    //设计功能有:
    //1.根据输入的ASCII数字计算16进制下标,通过index输出
    //2.ASCII数字后加一空格可再加8字符的ASCII参数作为玩家名,读取后通过name输出,可用于过关排行榜
    //  (name已经可以正确输出,但因时间原因排行榜功能暂不加入)
    //3.若在输入模式输入字符'r'则会显示排行榜,通过is_rank输出信号
    //  (is_rank信号可正确输出,但因时间原因排行榜功能暂不加入)
    //4.若在输入模式输入字符'v'则会显示版本信息,通过is_version输出信号
    //  (is_version信号可正确输出,但因时间原因版本信息功能暂不加入)
    Read_Index   VRAM_3(.clk(clk),
                        .rst(rst),
                        .read(index_in),
                        .next(win_posedge),
                        .rea(Read_Index_rea_out),
                        .VAddr(Read_Index_VAddr_out),
                        .VData(Read_Index_VData_in),
                        .index(Read_Index_map_out),
                        .name(),
                        .is_index(Read_Index_is_index_out),
                        .is_rank(),
                        .is_version(),
                        .load_next(Read_Index_load_next_out),
                        .done(Read_Index_done_out)
                        );

    //地图人物坐标及剩余洞数输入输出线
    wire [7:0] GRAM_Load_hole_out;
    wire [8:0] GRAM_Load_person_out;
    wire [7:0] GRAM_Move_hole_in;
    wire [8:0] GRAM_Move_person_in;
    assign GRAM_Move_hole_in = GRAM_Load_hole_out;
    assign GRAM_Move_person_in = GRAM_Load_person_out;

    //载入地图模块
    //根据输入的地图下标(index入口)对GRAM填充该地图,并输出人物坐标及剩余洞数
    Load_Level   GRAM_1(.clk(clk),
                        .rst(rst),
                        .load(load_in | restart | Load_Level_load_next_in),
                        .index(Load_Level_map_in),
                        .wea(GRAM_Load_wea_out),
                        .GAddr(GRAM_Load_GAddr_out),
                        .GData(GRAM_Load_GData_out),
                        .done(GRAM_Load_done_out),
                        .hole(GRAM_Load_hole_out),
                        .person(GRAM_Load_person_out)
                        );

    //切换显示模式
    always @ (posedge clk or posedge rst) begin
        if(rst) mode_flag <= 0;
        else if(exit) mode_flag <= 0;
        else if(load_done_posedge) mode_flag <= 1;
    end

    //移动步数输出线
    wire [15:0] step_cnt;

    //移动模块
    //载入地图时同步人物坐标及剩余洞数
    //根据移动方向移动人物及相关方块,更新剩余洞数并统计步数
    Move         GRAM_2(.clk(clk),
                        .rst(rst),
                        .load(load_done_posedge),
                        .hole(GRAM_Move_hole_in),
                        .person(GRAM_Move_person_in),
                        .move(move_in),
                        .direction(GRAM_Move_direction_in),
                        .rea(GRAM_Move_rea_out),
                        .GAddr_r(GRAM_Move_GAddr_r_out),
                        .GData_r(GRAM_Move_GData_r_in),
                        .wea(GRAM_Move_wea_out),
                        .GAddr_w(GRAM_Move_GAddr_w_out),
                        .GData_w(GRAM_Move_GData_w_out),
                        .step(step_cnt),
                        .done(GRAM_Move_done_out),
                        .win(win_out)
                        );

    //时钟分频用于七段码显示
    reg [18:0] clkcnt;
    always @ (posedge clk or posedge rst) begin
        if(rst) clkcnt <= 0;
        else clkcnt <= clkcnt + 1;
    end

    //七段码扫描信号线,小数点线及使能线
    wire [1:0] Scan;
    wire [3:0] point;
    wire [3:0] LES;
    assign Scan = clkcnt[18:17];
    assign point = 4'b0000;
    assign LES = 4'b1111;

    //七段码显示模块
    //以16进制显示对于数据
    Seg7_Dev     Seg1(.Scan(Scan),
                      .Hexs(step_cnt),
                      .point(point),
                      .LES(LES),
                      .AN(AN),
                      .SEGMENT(SEGMENT)
                      );

    //PS2键盘读取模块
    //从PS2键盘接收数据并进行扫描码处理
    //输出ASCII码,断码信号和读取成功信号
    PS2_Read     PS2_Top(.clk(clk),
                         .rst(rst),
                         .ps2_clk(ps2_clk),
                         .ps2_data(ps2_data),
                         .ascii(ascii),
                         .key_break(key_break),
                         .ready(ready)
                         );

    //VGA显示模块
    //根据显示模式将VGA显示与VRAM或GRAM内容同步
    //根据相关读写使能,输入输出的地址和数据对VRAM或GRAM内容进行修改
    VGA_Show     VGA_Top(.clk(clk),
                         .rst(rst),
                         .mode(mode),
                         .Vwea(VGA_Vwea_in),
                         .Gwea(VGA_Gwea_in),
                         .Vrea(VGA_Vrea_in),
                         .Grea(VGA_Grea_in),
                         .VAddr_w(VGA_VAddr_in),
                         .GAddr_w(VGA_GAddr_in),
                         .VData_in(VGA_VData_in),
                         .GData_in(VGA_GData_in),
                         .VData_out(VGA_VData_out),
                         .GData_out(VGA_GData_out),
                         .VGA_R(VGA_R),
                         .VGA_G(VGA_G),
                         .VGA_B(VGA_B),
                         .HS(HS),
                         .VS(VS)
                         );

endmodule
