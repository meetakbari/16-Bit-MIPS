`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:32 09/03/2019 
// Design Name: 
// Module Name:    Write_Back_Block 
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
module Write_Back_Block(
    input [15:0] ans_dm, //ans_dm comes from the data memory block which is 16 bits
	 input clk, reset, //clk is postive edge triggered, reset is negative edge triggered. 
	 output reg [15:0] ans_wb); //ans_wb is for write back to the register.  

wire [15:0] ans_wb_temp; //this wire we have taken for temporary storage of ans_dm if reset is 1.


assign ans_wb_temp = (reset) ? ans_dm : 16'b0;
always@(posedge clk)
begin
	ans_wb <= ans_wb_temp; //we have used this non-blocking assignment for future uses in another mobule also.
end


endmodule
