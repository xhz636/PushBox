`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:54 01/14/2016
// Design Name:   VGA_Scan
// Module Name:   E:/logic/Final/PushBox/VGA_Scan_test.v
// Project Name:  PushBox
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VGA_Scan
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VGA_Scan_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [9:0] pixel_x;
	wire [9:0] pixel_y;
	wire HS;
	wire VS;
	wire video_out;

	// Instantiate the Unit Under Test (UUT)
	VGA_Scan uut (
		.clk(clk), 
		.rst(rst), 
		.pixel_x(pixel_x), 
		.pixel_y(pixel_y), 
		.HS(HS), 
		.VS(VS), 
		.video_out(video_out)
	);

	initial forever begin
		#5;
		clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
	end
      
endmodule

