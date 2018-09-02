`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:18:48 08/29/2007 
// Design Name: 
// Module Name:    VTIMEC 
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
module VTIMEC(
	input clk,
	input x,
	output reg[15:0] dat = 0
    );
	 

reg [31:0] cntr = 0;
	 
always @ (posedge clk) begin
	dat <= (x)? (cntr/64) : dat;
	cntr <= (x)? 0 : cntr + 1;
end

endmodule
