`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:26:22 08/29/2007 
// Design Name: 
// Module Name:    VBTNINC 
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
module VBTNINC(
	input clk,
	input ce1ms,
	input btn,
	output wire CEO
    );

reg [1:0] prs = 0;
assign CEO = (prs == 2);

always @ (posedge clk) begin
if (ce1ms)	prs <= ((prs == 0) & btn) ? 1 : ((prs == 1) & !btn)? 2 : prs;
else if (CEO) prs <= 0;
end

endmodule
