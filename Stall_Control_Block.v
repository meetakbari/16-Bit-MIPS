`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:08 09/03/2019 
// Design Name: 
// Module Name:    Stall_Control_Block 
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
module Stall_Control_Block(op,clk,reset,stall,stall_pm);

input [5:0] op; // opcode....
input clk;
input reset;

output stall; // Selection line for hold address or next address.
output reg stall_pm; // Selection line for Previous instruction or current instruction...

wire HLT,Ld,JUMP;


reg Ld1 , JUMP1 , JUMP2 ; 
wire Ld1_temp,Jump1_temp1,Jump_temp2,stall_tmp;

assign HLT = ( op[0] & ~op[1] & ~op[2] & ~op[3] & op[4] & ~op[5]);
/*
	HLT is hold condition where you have to hold addresss till next positive edge comes. */

assign Ld = ( ~op[0] & ~op[1] & op[2] & ~op[3] & op[4] & ~op[5] & ~Ld1);
/*
	Ld is basically a Load instruction where we have to load the data to memory. for this work we have delay upto at least one clock pulse.
*/

assign JUMP = (op[2] & op[3] & op[4] & (~op[5]) & (~(JUMP2)));
/*
	JUMP instuction used when  we want jump to a specific address for this instuction we have to a two clock pulse delay.
*/

// reset conditions...
assign Ld1_temp = (reset) ? Ld : 1'b0;  // this a for a Load 
assign Jump_temp1 = (reset) ? JUMP : 1'b0 ; // this reset condition for first flipflop of jump.
assign Jump_temp2 = (reset) ? JUMP1 : 1'b0; // this reset condition for second flipflop of jump.
assign stall_tmp = (reset) ? stall : 1'b0 ; // this reset for the output stall_pm.

/*
	All the outputs of flipflop are assign when positive edge of cloc pulse come.....
*/
always@(posedge clk)
begin
	Ld1 = Ld1_temp; // LD1 = output of flip flop for load instruction.
	JUMP1 = Jump_temp1; // JUMP1 = output of First flip flop of jump instruction....
	JUMP2 = Jump_temp2; // JUMP2 = output of Second flip flop of jump instruction....
	stall_pm <= stall_tmp; // Output of a module.
end

assign stall = (Ld | JUMP | HLT );




endmodule
