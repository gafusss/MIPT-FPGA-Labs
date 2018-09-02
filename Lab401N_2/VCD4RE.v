`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:45 08/29/2007 
// Design Name: 
// Module Name:    VCD4RE 
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
module VCD4RE(
    input ce,
    input clk,
    input r,
    output wire TC,
    output wire CEO,
    output reg [3:0] Q = 0
    );
assign TC = (Q == 9);
assign CEO = ce & TC;
always @ (posedge clk) begin
Q <= (r|CEO)?0:ce?Q+1:Q;
end
endmodule
