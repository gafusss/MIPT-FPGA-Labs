`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:14:34 08/29/2007 
// Design Name: 
// Module Name:    VCB4RE 
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
module VCB4RE(
    input ce,
    input r,
    input clk,
    output wire TC,
    output wire CEO,
    output reg [3:0] Q = 0
    );
assign TC = (Q == (1<<4) - 1);
assign CEO = ce & TC;
always @ (posedge clk) begin
Q <= r?0:ce?Q+1:Q;
end
endmodule
