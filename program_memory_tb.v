`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:21:38 09/03/2019
// Design Name:   program_memory
// Module Name:   E:/SecondYear/CO_Lab/MIPS/program_memory_tb.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: program_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module program_memory_tb;

	// Inputs
	reg [15:0] jmp_loc;
	reg pc_mux_sel;
	reg stall;
	reg stall_pm;
	reg reset;
	reg clk;

	// Outputs
	wire [31:0] ins;
	wire [15:0] current_address;

	// Instantiate the Unit Under Test (UUT)
	program_memory uut (
		.jmp_loc(jmp_loc), 
		.pc_mux_sel(pc_mux_sel), 
		.stall(stall), 
		.stall_pm(stall_pm), 
		.reset(reset), 
		.clk(clk), 
		.ins(ins), 
		.current_address(current_address)
	);

	initial begin
		// Initialize Inputs
		/*clk = 0;
		jmp_loc = 4'h0008;
		pc_mux_sel = 1;
		stall = 0;
		stall_pm = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#2;
		reset = 0;
		#6;
		reset = 1;
		#2;
		pc_mux_sel = 0;
		#30;
		stall = 1;
		#10;
		stall_pm = 1;
		stall = 0;
		#10;
		stall_pm = 0;
		pc_mux_sel = 1;
		#5;*/
		
		#5;
		jmp_loc = 16'b0000000000000101;
		pc_mux_sel = 1;
		stall = 0;
		stall_pm = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#2;
		reset = 0;
		#6;
		reset = 1;
		#2;
        
		// Add stimulus here

	end
	
	initial begin
	clk = 0;
	forever begin
	#5;
	clk = ~clk;
	end
	end
      
endmodule

