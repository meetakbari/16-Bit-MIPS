`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:09 09/02/2019 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(ans_ex,DM_data,mem_rw_ex,mem_en_ex,mem_mux_sel_dm,reset,clk,ans_dm );
input [15:0]ans_ex,DM_data;
input mem_rw_ex,mem_en_ex,mem_mux_sel_dm,reset,clk;
wire [15:0] DM_out;
reg [15:0] Ex_out;
output [15:0]ans_dm;
   
D_memory your_instance_name (
  .clka(clk), // input clka
  .ena(mem_en_ex), // input ena
  .wea(mem_rw_ex), // input [0 : 0] wea
  .addra(ans_ex), // input [15 : 0] addra
  .dina(DM_data), // input [15 : 0] dina
  .douta(DM_out) // output [15 : 0] douta
);
/*
	Data Memory block's inputs and outputs are : ans_ex --> come from the ALU.
												DM_data --> This input comes direct from the register file.
												mem_en_ex --> this is enable for Data memory.
												mem_rw_ex --> this input for read or write in data memory.
												DM_out --> It is output from the data memory.
*/

wire [15:0]ans_ex_temp;

assign ans_ex_temp = (reset) ? ans_ex : 16'b0; //This condition for chacking for reset condition.

always@(posedge clk)
begin
	Ex_out=ans_ex_temp;
end
/* This always block work when the positive edge of clock come.and that time as_ex_temp assign to Ex_out.*/

assign  ans_dm= ( mem_mux_sel_dm ) ?  DM_out : Ex_out ; /*this mux for choosing the value of ans_dm is eiether the output from 
																			the direct output of register or the output of data memory.*/
endmodule

