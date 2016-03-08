`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:04:55 01/14/2016
// Design Name:   PS2_Keyboard
// Module Name:   E:/logic/Final/PushBox/PS2_KeyBoard_test.v
// Project Name:  PushBox
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PS2_Keyboard
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PS2_KeyBoard_test;

	// Inputs
	reg clk;
	reg rst;
	reg ps2_clk;
	reg ps2_data;

	// Outputs
	wire [9:0] data_out;
	wire ready;

	// Instantiate the Unit Under Test (UUT)
	PS2_Keyboard uut (
		.clk(clk), 
		.rst(rst), 
		.ps2_clk(ps2_clk), 
		.ps2_data(ps2_data), 
		.data_out(data_out), 
		.ready(ready)
	);

	initial forever begin
		#5;
		clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		ps2_clk = 0;
		ps2_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		ps2_clk = 1;
		// Add stimulus here
		#100;
		//发送F0
		ps2_data = 0;  //开始位
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data0
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data1
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data2
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data3
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //Data4
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //Data5
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //Data6
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //Data7
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //校验位
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //停止位
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#150;
		//发送1A
		ps2_data = 0;  //开始位
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data0
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //Data1
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data2
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //Data3
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //Data4
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data5
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data6
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 0;  //Data7
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //校验位
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
		ps2_data = 1;  //停止位
		#10;
		ps2_clk = 0;
		#40;
		ps2_clk = 1;
		#50;
	end
      
endmodule

