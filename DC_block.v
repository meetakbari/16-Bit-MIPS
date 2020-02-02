`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Group - 5 Section 2...
// 
// Create Date:    10:18:47 09/29/2019 
// Design Name: 
// Module Name:    DC_block 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Lab 6. Dependency check block
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DC_block(ins,clk,reset,imm,op_dec,RW_dm,mux_sel_A,mux_sel_B,imm_sel,mem_en_ex,mem_rw_ex,mem_mux_sel_dm);

input [31:0] ins;
input clk,reset;

output reg [15:0] imm; // immediate value
output reg [5:0] op_dec;
output [4:0] RW_dm; // address of destination register
output [1:0] mux_sel_A,mux_sel_B; // selection line for forwading
output reg imm_sel,mem_en_ex,mem_rw_ex,mem_mux_sel_dm; 
//(1). This part for decode the opcode from ins.
wire [5:0] opcode;
assign opcode = ins[31:26];

wire [5:0] op_dec_tmp;
assign op_dec_tmp = (reset) ? opcode : 6'b0;

//(2). This part for generate the memory signals.....
wire ld,st;
assign ld = ~opcode[0] & ~opcode[1] & opcode[2] & ~opcode[3] & opcode[4] & ~opcode[5];
assign st = opcode[0] & ~opcode[1] & opcode[2] & ~opcode[3] & opcode[4] & ~opcode[5];

wire ld_and,ld_latch_tmp,st_latch_tmp,ld_st_or,opcode_zero_tmp,sel_dm_1_tmp,sel_dm_2_tmp,sel_dm_2,zero_ld_st_and;
reg ld_latch,st_latch,opcode_zero,sel_dm_1;
wire ld_st_or_tmp;
assign ld_and = ld & ~ld_latch;
assign ld_latch_tmp = (reset) ? ld_and : 1'b0;
assign st_latch_tmp = (reset) ? st : 1'b0;
assign ld_st_or = ld_latch | st_latch ;
assign opcode_zero_tmp = (reset) ? opcode[0] : 1'b0;
assign zero_ld_st_and = ~opcode_zero & ld_st_or;
assign opcode_zero_1 = (reset) ? opcode_zero : 1'b0;
assign sel_dm_1_tmp = (reset) ? zero_ld_st_and : 1'b0;
assign sel_dm_2_tmp = (reset) ? sel_dm_1 : 1'b0;
assign ld_st_or_tmp = (reset) ? ld_st_or : 1'b0;

wire imm_1,imm_1_tmp;
assign imm_1 = opcode[3] & ~opcode[4] & ~opcode[5];
assign imm_1_tmp = (reset) ? imm_1 : 1'b0;

//(3). This part for decode the immediate value....
wire [15:0] imm_tmp;
assign imm_tmp = (reset) ? ins[15:0] : 16'b0;

//(4). This part for ALU forwading part....

wire jmp,cond_j,ld_fb,ld_fb_latch_tmp;
reg ld_fb_latch;
assign jmp = ~opcode[0] & ~opcode[1] & ~opcode[2] & opcode[3] & opcode[4] & ~opcode[5];
assign cond_j = opcode[2] & opcode[3] & opcode[4] & ~opcode[5];
assign ld_fb = ~opcode[0] & ~opcode[1] & opcode[2] & ~opcode[3] & opcode[4] & ~opcode[5] & ~ld_fb_latch;
assign ld_fb_latch_tmp = (reset) ? ld_fb : 1'b0;

wire jmp_cond_ld_and_not;
wire [14:0] extender;
assign jmp_cond_ld_and_not = ~(jmp | cond_j | ld_fb_latch);
assign extender = {15{jmp_cond_ld_and_not}};

wire [14:0] ins_11_to_25_and_extender;
assign ins_11_to_25_and_extender = extender & ins[25:11] ;

wire [4:0] A,B,Rd;
assign A = ins_11_to_25_and_extender[9:5];
assign B = ins_11_to_25_and_extender[4:0];
assign Rd = ins_11_to_25_and_extender[14:10];

wire [4:0] A_tmp,B_tmp;
reg [4:0] A_final,B_final;

assign A_tmp = (reset) ? A : 5'b0;
assign B_tmp = (reset) ? B : 5'b0;

wire [4:0] rd_1_tmp,rd_2_tmp,rd_3_tmp,rd_4_tmp;
reg [4:0] rd_1,rd_2,rd_3,rd_4;

assign rd_1_tmp = (reset) ? Rd : 5'b0;
assign rd_2_tmp = (reset) ? rd_1 : 5'b0;
assign rd_3_tmp = (reset) ? rd_2 : 5'b0;
assign rd_4_tmp = (reset) ? rd_3 : 5'b0;

assign RW_dm = rd_3;

wire com_1,com_2,com_3,com_4,com_5,com_6;

//This are the comparator....

assign com_1 = (rd_2 == A_final) ?  1'b1 : 1'b0;
assign com_2 = (rd_3 == A_final) ?  1'b1 : 1'b0;
assign com_3 = (rd_4 == A_final) ?  1'b1 : 1'b0;
assign com_4 = (rd_2 == B_final) ?  1'b1 : 1'b0;
assign com_5 = (rd_3 == B_final) ?  1'b1 : 1'b0;
assign com_6 = (rd_4 == B_final) ?  1'b1 : 1'b0;

wire pri_1_3,pri_1_4,pri_1_1,pri_1_2;
wire pri_2_3,pri_2_4,pri_2_1,pri_2_2;

//Thi part for priority encoder(4 to 2)
assign pri_1_3 = ~com_1 & com_2;
assign pri_1_4 = ~com_1 & ~com_2 & com_3;
assign pri_2_3 = ~com_4 & com_5;
assign pri_2_4 = ~com_4 & ~com_5 & com_6;
assign pri_1_1 = 1'b1;
assign pri_2_1 = 1'b1;
assign pri_1_2 = com_1;
assign pri_2_2 = com_4;

assign mux_sel_A = ((pri_1_4 == 1'b0 && pri_1_3 == 1'b0 && pri_1_2 == 1'b0 && pri_1_1 == 1'b1) ? 2'b00 : 
						 ((pri_1_4 == 1'b0 && pri_1_3 == 1'b0 && pri_1_2 == 1'b1) ? 2'b01 : 
						 ((pri_1_4 == 1'b0 && pri_1_3 == 1'b1) ? 2'b10 :
						 ((pri_1_4 == 1'b1 ) ? 2'b11 : mux_sel_A))));

assign mux_sel_B = ((pri_2_4 == 1'b0 && pri_2_3 == 1'b0 && pri_2_2 == 1'b0 && pri_2_1 == 1'b1) ? 2'b00 : 
						 ((pri_2_4 == 1'b0 && pri_2_3 == 1'b0 && pri_2_2 == 1'b1) ? 2'b01 : 
						 ((pri_2_4 == 1'b0 && pri_2_3 == 1'b1) ? 2'b10 :
						 ((pri_2_4 == 1'b1 ) ? 2'b11 : mux_sel_B))));
						 
always@(posedge clk)
begin
	op_dec = op_dec_tmp;
	ld_latch = ld_latch_tmp;
	st_latch = st_latch_tmp;
	opcode_zero = opcode_zero_tmp;
	mem_rw_ex = opcode_zero_1;
	sel_dm_1 = sel_dm_1_tmp;
	mem_mux_sel_dm = sel_dm_2_tmp;
	mem_en_ex = ld_st_or_tmp;
	imm_sel = imm_1_tmp;
	imm = imm_tmp;
	ld_fb_latch = ld_fb_latch_tmp;
	A_final = A_tmp;
	B_final = B_tmp;
	rd_1 = rd_1_tmp;
	rd_2 = rd_2_tmp;
	rd_3 = rd_3_tmp;
	rd_4 = rd_4_tmp;
end

endmodule
