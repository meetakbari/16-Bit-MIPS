`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:09 09/02/2019 
// Design Name: 
// Module Name:    Register_Bank_Block 
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
module Register_Bank_Block(
    input [15:0] ans_ex, ans_dm, ans_wb, imm,
	 input [4:0] RA, RB, RW_dm,
	 input [1:0] mux_sel_A, mux_sel_B,
	 input imm_sel, clk,
	 output [15:0] A, B	 
	 );
/*
ans_ex : Answer from execution block
ans_dm : Answer from data memory block
ans_wb : Answer from writeback block
imm : 16 bit immediate value which does not load the register.
RA : 5 bit address for Register A.
RB : 5 bit address for Register B.
RW_dm : 5 bit address which comes out from the Data_memory block.
mux_sel_A : Mux selection bit for A.
mux_sel_B : Mux selection bit for BI.
imm_sel : Immediate number select, that choose between BI and immediate value.
A : First operand for Execution block.
B : Second operand for Execution block.
*/

reg [15:0] reg_bank [31:0]; // 32 rows and 16 columns means 32x16 register bank is declared here.
reg [15:0] AR, BR; //outputs of Register bank.
wire [15:0] BI;


always@(posedge clk) //whole register bank works on positive edge clock.
begin
	AR = reg_bank[RA];
	BR = reg_bank[RB];
	reg_bank[RW_dm] = ans_dm; // ans_dm is the output of Data Memory Block and it will be stored at RW_dm address of Register bank.
	
end

assign A = ((mux_sel_A==2'b00) ? AR : 
			    ((mux_sel_A==2'b01) ? ans_ex :
				   ((mux_sel_A==2'b10) ? ans_dm : 
					  ((mux_sel_A==2'b11) ? ans_wb :0 ))));
					  
assign BI = ((mux_sel_B==2'b00) ? BR :
			    ((mux_sel_B==2'b01) ? ans_ex :
				   ((mux_sel_B==2'b10) ? ans_dm : 
					  ((mux_sel_B==2'b11) ? ans_wb :0 ))));

assign B = (imm_sel) ? imm : BI;

endmodule
