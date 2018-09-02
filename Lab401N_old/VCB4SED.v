`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:02:00 08/29/2007 
// Design Name: 
// Module Name:    VCB4SED 
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
module VCB4SED(
    input ce,
    input clk,
    input s,
    output reg [3:0] Q = 0,
    output wire TC,
    output wire CEO
    );
assign TC = (Q == 0);
assign CEO = ce & TC;
always @ (posedge clk) begin
Q <= s? ((1<<4) - 1):ce?Q-1:Q;
end
endmodule
