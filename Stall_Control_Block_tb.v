`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:49:56 09/03/2019
// Design Name:   Stall_Control_Block
// Module Name:   E:/SecondYear/CO_Lab/MIPS/Stall_Control_Block_tb.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Stall_Control_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Stall_Control_Block_tb;

	// Inputs
	reg [5:0] op;
	reg clk;
	reg reset;

	// Outputs
	wire stall;
	wire stall_pm;

	// Instantiate the Unit Under Test (UUT)
	Stall_Control_Block uut (
		.op(op), 
		.clk(clk), 
		.reset(reset), 
		.stall(stall), 
		.stall_pm(stall_pm)
	);

	initial begin
		// Initialize Inputs
		op = 6'b0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#2;
		reset = 0;
		#6;
		reset = 1;
		
		#8;
		op = 6'b010100;
		#20;
		op = 6'b0;
		#10;
		op = 6'b011110;
		#30;
		op = 6'b000000;
		#10;
		op = 6'b010001;
        
		// Add stimulus here

	end
   initial begin
	clk = 0;
	forever
	begin
		#5;
		clk = ~clk;
	end
	end
endmodule

