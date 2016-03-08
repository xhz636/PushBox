// Verilog test fixture created from schematic E:\logic\Final\PushBox\Seg7_Dev.sch - Thu Jan 14 15:56:25 2016

`timescale 1ns / 1ps

module Seg7_Dev_Seg7_Dev_sch_tb();

// Inputs
   reg [1:0] Scan;
   reg [15:0] Hexs;
   reg [3:0] point;
   reg [3:0] LES;

// Output
   wire [3:0] AN;
   wire [7:0] SEGMENT;

// Bidirs

// Instantiate the UUT
   Seg7_Dev UUT (
		.AN(AN), 
		.SEGMENT(SEGMENT), 
		.Scan(Scan), 
		.Hexs(Hexs), 
		.point(point), 
		.LES(LES)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		Scan = 0;
		Hexs = 0;
		point = 0;
		LES = 0;
   `endif
	
	integer i;
	initial begin
		Hexs = 16'h05AF;
		point = 4'b0101;
		LES = 4'b0000;
		for(i = 0; i < 4; i = i + 1) begin
			#50;
			Scan = i;
		end
		LES = 4'b1111;
		for(i = 0; i < 4; i = i + 1) begin
			#50;
			Scan = i;
		end		
	end

endmodule
