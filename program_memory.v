`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:25 09/03/2019 
// Design Name: 
// Module Name:    program_memory 
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
module program_memory(
	input [15:0] jmp_loc,
	input pc_mux_sel, stall, stall_pm, reset, clk,
	output [31:0] ins,
	output [15:0] current_address
	);    // Input and Output variable names are defined here.
	/* 
		- Address : 16 bits | Instruction : 32 bits
		Stall      - mux1 pin to choose hold_address or next_address
				       mux1 output - 'CAJ'
		pc_mux_sel - mux2 pin to choose CAJ or jmp_loc
						 mux2 output - 'CAR'
		reset      - mux3 pin to choose CAR or 16'b0
						 mux3 output - current_address
		stall_pm   - mux4 pin to choose PM_out(program memory) or ins_prv(previous instruction)
						 mux4 output - ins_pm(instruction of Program Memory)
		reset		  - mux5 pin to choose ins_pm or 32'b0
						 mux5 output - ins (instruction) final output of 32 bit instruction
		-> RESET - negative edge triggered.
		-> CLOCK - positive edge triggered.
		-> Program Counter (PC) has inbuilt counter we have defined here.
		-> PC is used to get next address on every counter and store in 16 bit reg until next address comes.
		-> PC has stack of 2 of 16 bits. 1 for hold_address and 2 is for next_address.
		-> A second 32 bit reg is used to store latest instruction and is used, if we need ins_previous.
	*/
wire [15:0] CAJ, CAR, hold_address_temp, next_address_temp; // 16 bits data wire
wire [31:0] PM_out, ins_pm, ins_prv_temp; // 32 bits data wire
p_mem your_instance_name (  
  .clka(clk), // input clka
  .addra(current_address), // input [15 : 0] addra
  .douta(PM_out) // output [31 : 0] douta
); // copied from p_mem.veo file, variables which are created in program memory(IP Core)-Intellectual Property core


reg [15:0] hold_address, next_address; // 1 - 16 bit Register of stack of 2.
reg [31:0] ins_prv; // 32 bit register

assign CAJ = ((stall==1'b0) ? next_address : hold_address ); //1st mux
assign CAR = ( (pc_mux_sel==1'b0) ? CAJ : jmp_loc);  //2nd mux
assign current_address = ((reset==1'b0) ? 16'b0 : CAR); //3rd mux

assign ins_pm = (stall_pm ? ins_prv : PM_out);  //4th mux
assign ins = (reset ? ins_pm : 32'b0);  //5th mux

assign hold_address_temp = reset ? current_address : 16'b0;  // reset conditions.
assign next_address_temp = reset ? (current_address + 1'b1) : 16'b0; 
assign ins_prv_temp = reset ? ins : 32'b0;

// hold_address_temp, next_address_temp and ins_prv_temp are used here for reset conditions.

always@(posedge clk)
begin
	next_address = next_address_temp;
	hold_address = hold_address_temp; 
	ins_prv = ins_prv_temp;
end

endmodule
