`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:13 09/02/2019 
// Design Name: 
// Module Name:    Execution_Block 
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

/*
	-> All outputs should be generated on positive edge of clock with respect to 'clk', except 'flag_ex'.
	-> 'reset' is negative level triggered
	-> INPUTS for ALU - 1)A 2)B 3)opcode 4)data_in
	-> INPUTS for register - which are wires - 1)flag_ex 2)ans_temp 3)data_out_buff. - are the output of ALU also.
	-> OUTPUTS from registers - 1)ans_ex 2)flag_ex 3)data_out 4)DM_data.
	-> There is one direct wire from inputs ex.(A or B) to register which is external input for register.
	-> There is one wire from reg to ALU which carries executed ans(ans_ex) to the ALU for further uses of it.
	-> 'reset' signal is used to clear junk data from the registers.
*/

module Execution_Block(A,B,data_in,op_dec,clk,reset,ans_ex,DM_data,data_out,flag_ex);

input [15:0] A,B,data_in;
input [5:0] op_dec;
input clk,reset;

output reg [15:0] ans_ex,DM_data,data_out;
output [1:0] flag_ex;

wire [15:0] ans_tmp,data_out_buff;
reg [1:0] flag_prv;

wire [15:0] sum_1,sum_2;
wire overflow_1,overflow_2;

Adder_16bit a1(A,B,sum_1,overflow_1);
Subtract s1(A,B,sum_2,overflow_2);

wire [15:0] shift;

Right_arithmetic rr(A,B,shift);



assign ans_tmp =  ((op_dec == 6'b000000) ? sum_1 :
						((op_dec == 6'b000001) ? sum_2 :
						((op_dec == 6'b000010) ? B :
						((op_dec == 6'b000100) ? A & B :
						((op_dec == 6'b000101) ? A|B : 
						((op_dec == 6'b000110) ? A ^ B :
						((op_dec == 6'b000111) ? ~B :
						((op_dec == 6'b001000) ? sum_1 :
						((op_dec == 6'b001001) ? sum_2 :
						((op_dec == 6'b001010) ? B :
						((op_dec == 6'b001100) ? A & B :
						((op_dec == 6'b001101) ? A | B:
						((op_dec == 6'b001110) ? A ^ B :
						((op_dec == 6'b001111) ? ~B : 
						((op_dec == 6'b010000) ? ans_ex :
						((op_dec == 6'b010001) ? ans_ex :
						((op_dec == 6'b010100) ? A : 
						((op_dec == 6'b010101) ? A : 
						((op_dec == 6'b010110) ? data_in : 
						((op_dec == 6'b010111) ? ans_ex :
						((op_dec == 6'b011000) ? ans_ex :
						((op_dec == 6'b011001) ? A<<B :
						((op_dec == 6'b011010) ? A>>B :
						((op_dec == 6'b011011) ?  shift :
						((op_dec == 6'b011100) ? ans_ex :
						((op_dec == 6'b011101) ? ans_ex :
						((op_dec == 6'b011110) ? ans_ex :
						((op_dec == 6'b011111) ? ans_ex :
						0))))))))))))))))))))))))))));
						
assign data_out_buff = (op_dec == 6'b010111) ? A : data_out; 

wire zero = (ans_tmp == 16'b0) ? 1 : 0;

assign flag_ex[1] =((op_dec == 6'b000000) ? zero :
					 ((op_dec == 6'b000001) ? zero :
					 ((op_dec == 6'b000010) ? zero :
					 ((op_dec == 6'b000100) ? zero :
					 ((op_dec == 6'b000101) ? zero :
					 ((op_dec == 6'b000110) ? zero :
					 ((op_dec == 6'b000111) ? zero :
					 ((op_dec == 6'b001000) ? zero :
					 ((op_dec == 6'b001001) ? zero :
					 ((op_dec == 6'b001010) ? zero :
					 ((op_dec == 6'b001100) ? zero :
					 ((op_dec == 6'b001101) ? zero :
					 ((op_dec == 6'b001110) ? zero : 
					 ((op_dec == 6'b001111) ? zero :
					 ((op_dec == 6'b010000) ? 1'b0 :
					 ((op_dec == 6'b010001) ? 1'b0 :
					 ((op_dec == 6'b010100) ? 1'b0 :
					 ((op_dec == 6'b010101) ? 1'b0 :
					 ((op_dec == 6'b010110) ? zero :
					 ((op_dec == 6'b010111) ? zero :
					 ((op_dec == 6'b011000) ? 1'b0 :
					 ((op_dec == 6'b011001) ? zero :
					 ((op_dec == 6'b011010) ? zero :
					 ((op_dec == 6'b011011) ? zero :
					 ((op_dec == 6'b011100) ? flag_prv[1] :
					 ((op_dec == 6'b011101) ? flag_prv[1]: 
					 ((op_dec == 6'b011110) ? flag_prv[1] :
					 ((op_dec == 6'b011111) ? flag_prv[1] :
					 0))))))))))))))))))))))))))));
					 
assign flag_ex[0] =((op_dec == 6'b000000) ? overflow_1:
					 ((op_dec == 6'b000001) ? overflow_2 :
					 ((op_dec == 6'b000010) ? 1'b0:
					 ((op_dec == 6'b000100) ? 1'b0 :
					 ((op_dec == 6'b000101) ? 1'b0 :
					 ((op_dec == 6'b000110) ? 1'b0 :
					 ((op_dec == 6'b000111) ? 1'b0 :
					 ((op_dec == 6'b001000) ? overflow_1 :
					 ((op_dec == 6'b001001) ? overflow_2 :
					 ((op_dec == 6'b001010) ? 1'b0 :
					 ((op_dec == 6'b001100) ? 1'b0 :
					 ((op_dec == 6'b001101) ? 1'b0 :
					 ((op_dec == 6'b001110) ? 1'b0 : 
					 ((op_dec == 6'b001111) ? 1'b0 :
					 ((op_dec == 6'b010000) ? 1'b0 :
					 ((op_dec == 6'b010001) ? 1'b0 :
					 ((op_dec == 6'b010100) ? 1'b0 :
					 ((op_dec == 6'b010101) ? 1'b0 :
					 ((op_dec == 6'b010110) ? 1'b0 :
					 ((op_dec == 6'b010111) ? 1'b0 :
					 ((op_dec == 6'b011000) ? 1'b0 :
					 ((op_dec == 6'b011001) ? 1'b0 :
					 ((op_dec == 6'b011010) ? 1'b0 :
					 ((op_dec == 6'b011011) ? 1'b0 :
					 ((op_dec == 6'b011100) ? flag_prv[0] :
					 ((op_dec == 6'b011101) ? flag_prv[0]: 
					 ((op_dec == 6'b011110) ? flag_prv[0] :
					 ((op_dec == 6'b011111) ? flag_prv[0] :
					 0))))))))))))))))))))))))))));
					 


wire [15:0] ans_tmp_1,data_out_temp,B_temp;
wire [1:0] flag_temp;


assign ans_tmp_1 = (reset) ? ans_tmp : 16'b0 ; 
assign data_out_temp = (reset==1) ? data_out_buff : 16'b0 ;
assign B_temp = (reset) ? B : 16'b0 ;
assign flag_temp = (reset) ? flag_ex : 2'b0 ;

always@(posedge clk)
begin
	ans_ex = ans_tmp_1;
	data_out = data_out_temp;
	DM_data = B_temp ;
	flag_prv = flag_temp;
end

endmodule

// 16 Bit ADDER module start... (4)
module Adder_16bit(A,B,Sum,Overflow);

input [15:0] A , B ;
output [15:0] Sum ;
output Overflow;

wire [15:0] Com_b,Com_a,Con_ans;

Twos_complement n1(B,Com_b);
Twos_complement n2(A, Com_a);

full_adder f(Com_a, Com_b, Con_ans, c_out);

Twos_complement n3(Con_ans, Sum);

assign Overflow = ((A[15] & B[15] & (~Sum[15])) | ((~A[15]) & (~B[15]) & Sum[15]));

endmodule

// Substraction module start...which uses 2's complement for substraction. (5)
module Subtract(A,B,Sub,Overflow);
input [15:0] A,B;
output [15:0] Sub;
output Overflow;

wire [15:0] Com_B;

Twos_complement n1(B,Com_B);
full_adder f(A, Com_B, Sub, Overflow);

endmodule

// full_adder module start... (6)
module full_adder(A , B , ans_ex , Overflow);

input [15:0] A,B;
output [15:0] ans_ex;
output Overflow;

wire z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14;

one_bit_full_adder a1(ans_ex[0], z0 , A[0] , B[0] , 0);
one_bit_full_adder a2(ans_ex[1], z1 , A[1] , B[1] , z0);
one_bit_full_adder a3(ans_ex[2], z2 , A[2] , B[2] , z1);
one_bit_full_adder a4(ans_ex[3], z3 , A[3] , B[3] , z2);
one_bit_full_adder a5(ans_ex[4], z4 , A[4] , B[4] , z3);
one_bit_full_adder a6(ans_ex[5], z5 , A[5] , B[5] , z4);
one_bit_full_adder a7(ans_ex[6], z6 , A[6] , B[6] , z5);
one_bit_full_adder a8(ans_ex[7], z7 , A[7] , B[7] , z6);
one_bit_full_adder a9(ans_ex[8], z8 , A[8] , B[8] , z7);
one_bit_full_adder a10(ans_ex[9], z9 , A[9] , B[9] , z8);
one_bit_full_adder a11(ans_ex[10], z10 , A[10] , B[10] , z9);
one_bit_full_adder a12(ans_ex[11], z11 , A[11] , B[11] , z10);
one_bit_full_adder a13(ans_ex[12], z12 , A[12] , B[12] , z11);
one_bit_full_adder a14(ans_ex[13], z13 , A[13] , B[13] , z12);
one_bit_full_adder a15(ans_ex[14], z14 , A[14] , B[14] , z13);
one_bit_full_adder a16(ans_ex[15], c_out , A[15] , B[15] , z14);

assign Overflow = c_out ^ z14;
endmodule

// ONE bit full adder module start... (7)
module one_bit_full_adder(Sum,Cout,A,B,Cin);

input A,B,Cin;
output Cout,Sum;

assign Sum = ((Cin & (~(A ^ B))) | ((~Cin)&(A^B)));
assign Cout = ((A & B) | (Cin & (A ^ B)));

endmodule

// 2's complement module start... (8)
module Twos_complement(a,com);

input [15:0] a;
output [15:0] com;

assign com = ~a + 1 ;

endmodule

//Right Arithmatic Shift module start... (9)
module Right_arithmetic(A,B,out);

input [15:0] A,B;
output [15:0] out;
wire [15:0] z;
assign z = A >> B;

assign out = ((B == 16'b0000000000000000) ? A :
					((B == 16'b0000000000000001) ? {A[15],z[14:0]} : 
					((B == 16'b0000000000000010) ? {{2{A[15]}},z[13:0]} : 
					((B == 16'b0000000000000011) ? {A[15],A[15],A[15],z[12:0]} :
					((B == 16'b0000000000000100) ? {{4{A[15]}},z[11:0]} :
					((B == 16'b0000000000000101) ? {{5{A[15]}},z[10:0]} :
					((B == 16'b0000000000000110) ? {{6{A[15]}},z[9:0]}  :
					((B == 16'b0000000000000111) ? {{7{A[15]}},z[8:0]}  :
					((B == 16'b0000000000001000) ? {{8{A[15]}},z[7:0]}  : 
					((B == 16'b0000000000001001) ? {{9{A[15]}},z[6:0]}  :
					((B == 16'b0000000000001010) ? {{10{A[15]}},z[5:0]} : 
					((B == 16'b0000000000001011) ? {{11{A[15]}},z[4:0]} : 
					((B == 16'b0000000000001100) ? {{12{A[15]}},z[3:0]} : 
					((B == 16'b0000000000001101) ? {{13{A[15]}},z[2:0]} :
					((B == 16'b0000000000001110) ? {{14{A[15]}},z[1:0]} : 
					((B == 16'b0000000000001111) ? {15{A[15]}}          : {15{A[15]}} )))))))))))))))) ;


endmodule
