`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:05:06 08/29/2007 
// Design Name: 
// Module Name:    VCB4CLED 
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
module VCB4CLED(
    input ce,
    input up,
    input [3:0] di,
    input L,
    input clk,
    input clr,
    output reg [3:0] Q = 0,
    output wire CEO,
    output wire TC
    );
assign TC = up?(Q == (1<<4) - 1):(Q == 0);
assign CEO = ce & TC;
always @ (posedge clr or posedge clk) begin
if (clr) Q <= 0;
else Q <= L?di:(up & ce)?Q+1:(!up & ce)?Q-1:Q;
end
endmodule
