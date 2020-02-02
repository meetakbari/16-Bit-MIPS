`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:07:20 09/02/2019
// Design Name:   Execution_Block
// Module Name:   E:/SecondYear/CO_Lab/MIPS/Execution_Block_tb.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Execution_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Execution_Block_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] data_in;
	reg [5:0] op_dec;
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] ans_ex;
	wire [15:0] DM_data;
	wire [15:0] data_out;
	wire [1:0] flag_ex;

	// Instantiate the Unit Under Test (UUT)
	Execution_Block uut (
		.A(A), 
		.B(B), 
		.data_in(data_in), 
		.op_dec(op_dec), 
		.clk(clk), 
		.reset(reset), 
		.ans_ex(ans_ex), 
		.DM_data(DM_data), 
		.data_out(data_out), 
		.flag_ex(flag_ex)
	);

	initial begin
		// Initialize Inputs
			reset = 1;
			#2;
			reset = 0;
			#6;
			reset = 1;
			#2;

			A = 16'b0100000000000000;
			B = 16'b1100000000000000;
			data_in = 16'b0000000000001000;
			op_dec = 6'b000000;

			#10;
			op_dec = 6'b000001;	//2

			#10;
			
			op_dec = 6'b000010;  //3

			#10;
			
			op_dec = 6'b000100;	//4

			#10;
			
			op_dec = 6'b000101;	//5

			#10;
			
			op_dec = 6'b000110;	//6

			#10;
			
			op_dec = 6'b000111;	//7

			#10;
			
			op_dec = 6'b001000; //8

			#10;
			
			op_dec = 6'b001001;	//9

			#10;
			
			op_dec = 6'b001010;	//10

			#10;
			
			op_dec = 6'b001100;	//11

			#10;
			
			op_dec = 6'b001101;	//12

			#10;
			
			op_dec = 6'b001110;	//13

			#10;
			
			op_dec = 6'b001111;	//14

			#10;
			
			op_dec = 6'b010000;	//15

			#10;
			
			op_dec = 6'b010001;	//16

			#10;
			
			op_dec = 6'b010100;	//17

			#10;
			
			op_dec = 6'b010101;	//18

			#10;
			
			op_dec = 6'b010110;	//19

			#10;
			
			op_dec = 6'b010111;	//20
			reset = 1;
			#10;
			
			op_dec = 6'b011000;	//21

			#10;
			op_dec = 6'b011001;	  //22
			A = 16'b1100000000000000;
			B = 16'b0000000000000001;
			
			#10;

			
			op_dec = 6'b011010;	//23

			#10;
			
			op_dec = 6'b011011;	//24

			#10;
			
			op_dec = 6'b011100;	//25

			#10;
			
			op_dec = 6'b011111;	//26

			#10;
			
			op_dec = 6'b011110;	//27

			#10;
			
			op_dec = 6'b011111;  //28
        
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

