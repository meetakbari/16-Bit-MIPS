`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:12 09/10/2019 
// Design Name: 
// Module Name:    Jump_Control_Block 
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
module Jump_Control_Block(jmp_address_pm,current_address,op,flag_ex,interrupt,clk,reset,jmp_loc,pc_mux_sel);

input [15:0] jmp_address_pm,current_address; //jump address form instruction memory(pm block)
input [5:0] op;
input [1:0] flag_ex;
input clk,reset,interrupt; //interrupt is a 1 bit value to allow interrupt or not.

output [15:0] jmp_loc; //jump location or Jump address for PC_IM block
output pc_mux_sel;//Mux selection bit for PC_IM block

wire JV,JNV,JZ,JNZ,JMP; //this are the outputs of different AND gates of different opcodes for jumps.

assign JV = (~op[5] & op[4] & op[3] & op[2] & ~op[1] & ~op[0]) ; //jump with overflow
assign JNV = (~op[5] & op[4] & op[3] & op[2] & ~op[1] & op[0]) ; //jump with No Overflow
assign JZ = (~op[5] & op[4] & op[3] & op[2] & op[1] & ~op[0]) ; // jump with Zero
assign JNZ = (~op[5] & op[4] & op[3] & op[2] & op[1] & op[0]) ;// jump with NO Zero
assign JMP = (~op[5] & op[4] & op[3] & ~op[2] & ~op[1] & ~op[0] ); // Unconditional jump

wire int_temp_1,int_temp_2;
reg int_1,int_2;  // Outputs of DFF // DFF is used to create delay of 2 clock cycle.

assign int_temp_1 = (reset) ? interrupt : 1'b0; //output of first dff.. reset cond* check.
assign int_temp_2 = (reset) ? int_1 : 1'b0; //output of second dff.. reset cond* check.

wire [15:0] jmp_mux; // output of mux to choose between f000 or jmp_address_pm.
wire [15:0] input_jmp_16bit,input_jmp_16bit_temp;

assign jmp_mux = (int_1) ?  16'b1111000000000000 : jmp_address_pm ;

wire [15:0] jump_add_reg_temp;
reg [15:0] jump_add_reg ;
assign jump_add_reg_temp = (reset) ? jmp_mux : 16'b0;


wire [15:0] add;
assign add = current_address +1;

wire [15:0] input_reg_16bit,input_reg_16bit_tmp; // reg wires taken to check reset cond* and use to that 16 bit register.
reg [15:0] output_reg_16bit;

assign input_reg_16bit = (interrupt) ? add : output_reg_16bit;
assign input_reg_16bit_tmp = (reset) ? input_reg_16bit : 16'b0;

wire RET; // Return condition wire 1bit
assign RET = (~op[5] & op[4] & ~op[3] & ~op[2] & ~op[1] & ~op[0]) ; 

wire [15:0] jump_loc_mux; // this mux is used to choose between output_reg_16bit and jmp_mux.
assign jmp_loc = (RET) ? output_reg_16bit : jump_add_reg;



wire[1:0] input_reg_2bit ,input_reg_2bit_tmp ; //reg wires taken to check reset cond* and use to that 2 bit register.
reg [1:0] output_reg_2bit;

assign input_reg_2bit = (int_2) ? flag_ex: output_reg_2bit;
assign input_reg_2bit_tmp = (reset) ? input_reg_2bit : 2'b0 ;

wire [1:0] selection; // this selection line is used to compute four conditional jumps.
assign selection = (RET) ? output_reg_2bit : flag_ex ;

wire jv1,jnv1,jz1,jnz1;
assign jv1 = JV & selection[0] ;
assign jnv1 = JNV & ~selection[0];
assign jz1 = JZ & selection[1] ;
assign jnz1 = JNZ & ~selection[1];

assign pc_mux_sel = jv1 | jnv1 | jz1 | jnz1 | JMP | RET | int_1 ; 
always@(posedge clk)
begin
	int_1 = int_temp_1;
	int_2 = int_temp_2;
	output_reg_16bit = input_reg_16bit_tmp;	
	output_reg_2bit = input_reg_2bit_tmp;
	jump_add_reg = jump_add_reg_temp; 
end
endmodule
