`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:05 10/01/2019
// Design Name:   All_in_one
// Module Name:   E:/SecondYear/CO_Lab/MIPS/All_in_one_tb.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: All_in_one
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top_module_tb;

	// Inputs
	reg [15:0] data_in;
	reg clk;
	reg interrupt;
	reg reset;

	// Outputs
	wire [15:0] data_out;
	wire [31:0] ins;
	wire [15:0] A;
	wire [15:0] B;
	wire [15:0] Current_Address;
	wire [15:0] ans_ex;
	wire [15:0] ans_dm;
	wire [15:0] ans_wb;
	wire [1:0] mux_sel_A;
	wire [1:0] mux_sel_B;
	wire imm_sel;
	wire [15:0] imm;
	wire [1:0] flag_ex;
	wire pc_mux_sel;
	wire [15:0] jmp_loc;

	// Instantiate the Unit Under Test (UUT)
	Top_module uut (
		.data_in(data_in), 
		.clk(clk), 
		.interrupt(interrupt), 
		.reset(reset), 
		.data_out(data_out), 
		.ins(ins), 
		.A(A), 
		.B(B), 
		.Current_Address(Current_Address), 
		.ans_ex(ans_ex), 
		.ans_dm(ans_dm), 
		.ans_wb(ans_wb), 
		.mux_sel_A(mux_sel_A), 
		.mux_sel_B(mux_sel_B), 
		.imm_sel(imm_sel),
		.imm(imm),
		.flag_ex(flag_ex),
		.pc_mux_sel(pc_mux_sel),
		.jmp_loc(jmp_loc)
	);

	initial 
			begin
					data_in = 0;
					interrupt = 0;
					clk = 0;
					reset = 1;
			#200;	reset = 0;
				#500;	reset = 1;
				end
	
	initial begin
		clk = 0;
		forever
		begin
		#500;
		clk = ~clk;
		end
		end
      
endmodule

