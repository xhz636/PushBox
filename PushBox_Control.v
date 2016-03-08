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

    parameter Move_Up = 2'b00;   //���������ƶ�
    parameter Move_Down = 2'b01; //���������ƶ�
    parameter Move_Left = 2'b10; //���������ƶ�
    parameter Move_Right = 2'b11;//���������ƶ�

    parameter Key_Enter = 8'h0D; //�س���ASCII��
    parameter Key_Back = 8'h08;  //�˸��ASCII��
    parameter Key_Esc = 8'h1B;   //�˳���ASCII��
    parameter Key_Up = 8'h1E;    //�������ASCII��
    parameter Key_Down = 8'h1F;  //�������ASCII��
    parameter Key_Left = 8'h1D;  //�������ASCII��
    parameter Key_Right = 8'h1C; //�������ASCII��

    wire key_break;    //���̶���
    wire ready, mode;  //�����ź�,����ģʽ
    wire [7:0] ascii;  //��������ASCII��
    reg mode_flag;
    assign mode = mode_flag;

    reg exit_map;
    wire exit;    //�˳���Ϸ����
    assign exit = exit_map;
    reg input_flag, clear_flag;
    wire input_in, clear_in;      //�����ź�,����ź�
    assign input_in = input_flag;
    assign clear_in = clear_flag;
    
    reg index_flag, move_flag, restart_flag;
    wire index_in, move_in, restart;  //�ɹ���ȡ��ͼ�±��ź�,�ƶ��ź�,���¿�ʼ�ź�
    assign index_in = index_flag;
    assign move_in = move_flag;
    assign restart = restart_flag;
    reg [1:0] direction_flag;         //�ƶ�����
    wire [1:0] GRAM_Move_direction_in;
    assign GRAM_Move_direction_in = direction_flag;

    //����ʱģʽ�ӳ��ź�,��Ϊ����ʱ��֪��ʲôԭ��,��ֱ�ӽ��������ӵڶ���,�����¿�ʼ���±��Ϊ������,ͨ����ʱת������ģʽ
    reg [19:0] mode_shift;

    always @ (posedge clk or posedge rst) begin
        if(rst) begin  //����
            exit_map <= 0;
            input_flag <= 0;
            clear_flag <= 0;
            index_flag <= 0;
            move_flag <= 0;
            restart_flag <= 0;
            mode_shift <= 1;
        end else if(ready & !key_break)begin  //��ȡ�����Ҳ�Ϊ����
            if(mode_flag == 0) begin  //����ģʽ
                if(ascii >= 8'h20 || ascii == Key_Back) begin  //��ĸ,���ֻ��˸�
                    input_flag <= 1;  //����ASCII
                    clear_flag <= 0;
                end else if(ascii == Key_Enter) begin
                    input_flag <= 0;
                    clear_flag <= 0;
                    index_flag <= 1;  //�����±�
                end else if(ascii == Key_Esc) begin
                    clear_flag <= 1;  //�������
                end
            end else begin  //��Ϸģʽ
                case (ascii)
                    Key_Enter : begin restart_flag <= 1; end  //���¿�ʼ
                    Key_Esc   : begin exit_map <= 1; end      //�˳���Ϸģʽ
                    Key_Up    : begin move_flag <= 1; direction_flag <= Move_Up; end    //�����ƶ�
                    Key_Down  : begin move_flag <= 1; direction_flag <= Move_Down; end  //�����ƶ�
                    Key_Left  : begin move_flag <= 1; direction_flag <= Move_Left; end  //�����ƶ�
                    Key_Right : begin move_flag <= 1; direction_flag <= Move_Right; end //�����ƶ�
                endcase
            end
        end else if(mode_shift != 0) begin
            mode_shift <= mode_shift + 1;  //��ʱ�����ź�,��������ģʽ
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

    //VRAMдʹ��������
    wire VRAM_Clear_wea_out;
    wire VRAM_Input_wea_out;
    wire VGA_Vwea_in;
    assign VGA_Vwea_in = VRAM_Input_wea_out | VRAM_Clear_wea_out;

    //VRAM��ʹ��������
    wire Read_Index_rea_out;
    wire VGA_Vrea_in;
    assign VGA_Vrea_in = Read_Index_rea_out;

    //VRAM��ַ������
    wire [10:0] VRAM_Clear_VAddr_out;
    wire [10:0] VRAM_Input_VAddr_out;
    wire [10:0] Read_Index_VAddr_out;
    wire [10:0] VGA_VAddr_in;
    assign VGA_VAddr_in = VRAM_Input_wea_out ? VRAM_Input_VAddr_out :
                          VRAM_Clear_wea_out ? VRAM_Clear_VAddr_out :
                          Read_Index_rea_out ? Read_Index_VAddr_out :
                          VRAM_Input_VAddr_out;

    //VRAM����������
    wire [7:0] VRAM_Clear_VData_out;
    wire [7:0] VRAM_Input_VData_out;
    wire [7:0] VGA_VData_in;
    assign VGA_VData_in = VRAM_Input_wea_out ? VRAM_Input_VData_out :
                          VRAM_Clear_wea_out ? VRAM_Clear_VData_out :
                          8'h00;

    //RAM��д����ź�
    wire VRAM_Clear_done_out;
    wire VRAM_Input_done_out;
    wire GRAM_Load_done_out;
    wire GRAM_Move_done_out;
    wire done;
    assign done = VRAM_Input_done_out | VRAM_Clear_done_out | GRAM_Load_done_out | GRAM_Move_done_out;

    //VRAM���������
    wire [7:0] Read_Index_VData_in;
    wire [7:0] VGA_VData_out;
    assign Read_Index_VData_in = VGA_VData_out;

    //GRAM��ʹ��������
    wire GRAM_Move_rea_out;
    wire VGA_Grea_in;
    assign VGA_Grea_in = GRAM_Move_rea_out;

    //GRAMдʹ��������
    wire GRAM_Load_wea_out;
    wire GRAM_Move_wea_out;
    wire VGA_Gwea_in;
    assign VGA_Gwea_in = GRAM_Load_wea_out | GRAM_Move_wea_out;

    //GRAM��ַ������
    wire [8:0] GRAM_Load_GAddr_out;
    wire [8:0] GRAM_Move_GAddr_r_out;
    wire [8:0] GRAM_Move_GAddr_w_out;
    wire [8:0] VGA_GAddr_in;
    assign VGA_GAddr_in = GRAM_Load_wea_out ? GRAM_Load_GAddr_out :
                          GRAM_Move_rea_out ? GRAM_Move_GAddr_r_out :
                          GRAM_Move_wea_out ? GRAM_Move_GAddr_w_out :
                          9'd0;

    //GRAM����������
    wire [3:0] GRAM_Load_GData_out;
    wire [3:0] GRAM_Move_GData_w_out;
    wire [3:0] VGA_GData_in;
    assign VGA_GData_in = GRAM_Load_wea_out ? GRAM_Load_GData_out :
                          GRAM_Move_wea_out ? GRAM_Move_GData_w_out :
                          4'h0;

    //GRAM���������
    wire [3:0] GRAM_Move_GData_r_in;
    wire [3:0] VGA_GData_out;
    assign GRAM_Move_GData_r_in = VGA_GData_out;

    //��ȡ�����ͼ�ź�������
    reg [1:0] Load_done_sign;
    always @ (posedge clk or posedge rst) begin
        if(rst) Load_done_sign <= 0;
        else Load_done_sign <= {Load_done_sign[0], GRAM_Load_done_out};
    end
    wire load_done_posedge;
    assign load_done_posedge = !Load_done_sign[1] & Load_done_sign[0];

    //�������ģ��
    //���VRAM�����������
    VRAM_Clear   VRAM_1(.clk(clk),
                        .rst(rst),
                        .clear(clear_in | load_done_posedge),
                        .wea(VRAM_Clear_wea_out),
                        .VAddr(VRAM_Clear_VAddr_out),
                        .VData(VRAM_Clear_VData_out),
                        .done(VRAM_Clear_done_out)
                        );

    //��ȡ�������ź�������
    reg [1:0] clear_sign;
    wire clear_posedge;
    always @ (posedge clk or posedge rst) begin
        if(rst) clear_sign <= 2'b00;
        else clear_sign <= {clear_sign[0], VRAM_Clear_done_out};
    end
    assign clear_posedge = !clear_sign[1] & clear_sign[0];

    //����ģ��
    //ͨ���ж�ASCII��VRAM�ڵ����ݽ����޸�
    VRAM_Input   VRAM_2(.clk(clk),
                        .rst(rst | clear_posedge),
                        .data_in(input_in),
                        .ascii(ascii),
                        .wea(VRAM_Input_wea_out),
                        .VAddr(VRAM_Input_VAddr_out),
                        .VData(VRAM_Input_VData_out),
                        .done(VRAM_Input_done_out)
                        );

    //��ȡ��ͼ�±������
    wire [6:0] Read_Index_map_out;
    wire [6:0] Load_Level_map_in;
    assign Load_Level_map_in = Read_Index_map_out;
    wire Read_Index_is_index_out;
    wire Read_Index_done_out;

    //��ȡ��ȡ��ͼ�±�����ź�������
    reg [1:0] Read_done_sign;
    always @ (posedge clk or posedge rst) begin
        if(rst) Read_done_sign <= 0;
        else Read_done_sign <= {Read_done_sign[0], Read_Index_done_out};
    end
    wire read_done_posedge;
    assign read_done_posedge = !Read_done_sign[1] & Read_done_sign[0];

    //�����ͼ�ź�
    wire load_in;
    assign load_in = read_done_posedge & Read_Index_is_index_out;

    //��ȡ�����ź�������
    wire win_out;
    reg [1:0] win_out_sign;
    always @ (posedge clk or posedge rst) begin
        if(rst) win_out_sign <= 0;
        else win_out_sign <= {win_out_sign[0], win_out};
    end
    wire win_posedge;
    assign win_posedge = !win_out_sign[1] & win_out_sign[0];

    //������һ����������ź�
    wire Read_Index_load_next_out;
    wire Load_Level_load_next_in;
    assign Load_Level_load_next_in = Read_Index_load_next_out;

    //��ȡ�����ͼ�±�ģ��
    //��ƹ�����:
    //1.���������ASCII���ּ���16�����±�,ͨ��index���
    //2.ASCII���ֺ��һ�ո���ټ�8�ַ���ASCII������Ϊ�����,��ȡ��ͨ��name���,�����ڹ������а�
    //  (name�Ѿ�������ȷ���,����ʱ��ԭ�����а����ݲ�����)
    //3.��������ģʽ�����ַ�'r'�����ʾ���а�,ͨ��is_rank����ź�
    //  (is_rank�źſ���ȷ���,����ʱ��ԭ�����а����ݲ�����)
    //4.��������ģʽ�����ַ�'v'�����ʾ�汾��Ϣ,ͨ��is_version����ź�
    //  (is_version�źſ���ȷ���,����ʱ��ԭ��汾��Ϣ�����ݲ�����)
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

    //��ͼ�������꼰ʣ�ප�����������
    wire [7:0] GRAM_Load_hole_out;
    wire [8:0] GRAM_Load_person_out;
    wire [7:0] GRAM_Move_hole_in;
    wire [8:0] GRAM_Move_person_in;
    assign GRAM_Move_hole_in = GRAM_Load_hole_out;
    assign GRAM_Move_person_in = GRAM_Load_person_out;

    //�����ͼģ��
    //��������ĵ�ͼ�±�(index���)��GRAM���õ�ͼ,������������꼰ʣ�ප��
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

    //�л���ʾģʽ
    always @ (posedge clk or posedge rst) begin
        if(rst) mode_flag <= 0;
        else if(exit) mode_flag <= 0;
        else if(load_done_posedge) mode_flag <= 1;
    end

    //�ƶ����������
    wire [15:0] step_cnt;

    //�ƶ�ģ��
    //�����ͼʱͬ���������꼰ʣ�ප��
    //�����ƶ������ƶ����Ｐ��ط���,����ʣ�ප����ͳ�Ʋ���
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

    //ʱ�ӷ�Ƶ�����߶�����ʾ
    reg [18:0] clkcnt;
    always @ (posedge clk or posedge rst) begin
        if(rst) clkcnt <= 0;
        else clkcnt <= clkcnt + 1;
    end

    //�߶���ɨ���ź���,С�����߼�ʹ����
    wire [1:0] Scan;
    wire [3:0] point;
    wire [3:0] LES;
    assign Scan = clkcnt[18:17];
    assign point = 4'b0000;
    assign LES = 4'b1111;

    //�߶�����ʾģ��
    //��16������ʾ��������
    Seg7_Dev     Seg1(.Scan(Scan),
                      .Hexs(step_cnt),
                      .point(point),
                      .LES(LES),
                      .AN(AN),
                      .SEGMENT(SEGMENT)
                      );

    //PS2���̶�ȡģ��
    //��PS2���̽������ݲ�����ɨ���봦��
    //���ASCII��,�����źźͶ�ȡ�ɹ��ź�
    PS2_Read     PS2_Top(.clk(clk),
                         .rst(rst),
                         .ps2_clk(ps2_clk),
                         .ps2_data(ps2_data),
                         .ascii(ascii),
                         .key_break(key_break),
                         .ready(ready)
                         );

    //VGA��ʾģ��
    //������ʾģʽ��VGA��ʾ��VRAM��GRAM����ͬ��
    //������ض�дʹ��,��������ĵ�ַ�����ݶ�VRAM��GRAM���ݽ����޸�
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
