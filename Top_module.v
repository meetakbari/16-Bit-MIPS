`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:17 10/01/2019 
// Design Name: 
// Module Name:    All_in_one 
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
module Top_module(
input [15:0] data_in,
input clk,
input interrupt,
input reset,
output [15:0] data_out,
output [31:0] ins,
output [15:0] A,
output [15:0] B,
output [15:0] Current_Address,
output [15:0] ans_ex,
output [15:0] ans_dm,
output [15:0] ans_wb,
output [1:0] mux_sel_A,
output [1:0] mux_sel_B,
output imm_sel,
output [15:0] imm,
output [1:0] flag_ex,
output pc_mux_sel,
output [15:0] jmp_loc
    );

wire [31:0] ins_temp;
wire [15:0] jmp_loc_temp, A_temp, B_temp, ans_ex_temp, DM_data_temp, ans_dm_temp,ans_wb_temp, current_address_temp, imm_temp,data_out_temp;
wire [5:0] opcode;
wire [4:0] RA, RB, RW_dm_temp;
wire [1:0] mux_sel_A_temp, mux_sel_B_temp;
wire stall_temp, stall_pm_temp, pc_mux_sel_temp;
wire mem_en_ex_temp, mem_rw_ex_temp, mem_mux_sel_dm_temp, imm_sel_temp;
wire [4:0] RW_dm;
wire [5:0] op_dec;

DC_block DC(ins_temp,clk,reset,imm,op_dec,RW_dm,mux_sel_A,mux_sel_B,imm_sel,mem_en_ex,mem_rw_ex,mem_mux_sel_dm);
assign imm_temp = imm;
assign opcode = op_dec;
assign RW_dm_temp = RW_dm;
assign mux_sel_A_temp = mux_sel_A;
assign mux_sel_B_temp = mux_sel_B;
assign imm_sel_temp = imm_sel;
assign mem_en_ex_temp = mem_en_ex;
assign mem_rw_ex_temp = mem_rw_ex;
assign mem_mux_sel_dm_temp = mem_mux_sel_dm;

Stall_Control_Block S(ins_temp[31:26],clk,reset,stall,stall_pm);
assign stall_temp = stall;
assign stall_pm_temp = stall_pm;

wire [15:0] jmp_address_pm;
wire [1:0] flag_ex_tmp;
//wire [15:0] jmp_loc;

assign jmp_address_pm = ins_temp[15:0];
Jump_Control_Block J(jmp_address_pm, current_address_temp , ins_temp[31:26], flag_ex_tmp, interrupt, clk, reset, jmp_loc, pc_mux_sel);
assign jmp_loc_temp = jmp_loc;
assign pc_mux_sel_temp = pc_mux_sel;

program_memory P(jmp_loc_temp,pc_mux_sel_temp, stall_temp, stall_pm_temp, reset, clk, ins, Current_Address);
assign ins_temp = ins;
assign current_address_temp = Current_Address;

assign RA = ins_temp[20:16];
assign RB = ins_temp[15:11];
Register_Bank_Block R(ans_ex_temp, ans_dm_temp, ans_wb_temp, imm_temp, RA, RB, RW_dm_temp ,mux_sel_A_temp, mux_sel_B_temp, imm_sel_temp, clk, A, B);
assign A_temp = A;
assign B_temp = B;

wire [15:0] DM_data;
Execution_Block A1(A_temp ,B_temp, data_in, opcode, clk, reset, ans_ex, DM_data, data_out, flag_ex);
assign flag_ex_tmp = flag_ex;
assign ans_ex_temp = ans_ex;
assign DM_data_temp = DM_data;
assign data_out_temp = data_out;

Data_Memory D(ans_ex_temp, DM_data_temp, mem_rw_ex_temp, mem_en_ex_temp, mem_mux_sel_dm_temp, reset, clk, ans_dm);

assign ans_dm_temp = ans_dm;

Write_Back_Block W(ans_dm_temp, clk, reset, ans_wb);
assign ans_wb_temp = ans_wb;

endmodule
