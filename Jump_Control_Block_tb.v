`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:20 09/10/2019
// Design Name:   Jump_Control_Block
// Module Name:   E:/SecondYear/CO_Lab/MIPS/Jump_Control_Block_tb.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Jump_Control_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Jump_Control_Block_tb;

	// Inputs
	reg [15:0] jmp_address_pm;
	reg [15:0] current_address;
	reg [5:0] op;
	reg [1:0] flag_ex;
	reg interrupt;
	reg clk;
	reg reset;

	// Outputs
	wire pc_mux_sel;
	wire [15:0] jmp_loc;

	// Instantiate the Unit Under Test (UUT)
	Jump_Control_Block uut (
		.jmp_address_pm(jmp_address_pm), 
		.current_address(current_address), 
		.op(op), 
		.flag_ex(flag_ex), 
		.interrupt(interrupt), 
		.clk(clk), 
		.reset(reset), 
		.jmp_loc(jmp_loc),
		.pc_mux_sel(pc_mux_sel)
		
	);

	initial begin
		// Initialize Inputs
		jmp_address_pm =  16'b0000000000000000;
		current_address = 16'b0000000000000001;
		op = 6'b000000;
		flag_ex = 2'b11;
		interrupt = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#2;
		reset =0;
		#6;
		reset = 1;
		#8;
		interrupt = 1;
		
		#10;
		interrupt = 0;
		jmp_address_pm = 16'b0000000000001000;
		#10;
		op = 6'b011000;
		#20;
		op = 6'b010000;
		flag_ex = 2'b00;
		#10;
		op = 6'b011110;
        
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

