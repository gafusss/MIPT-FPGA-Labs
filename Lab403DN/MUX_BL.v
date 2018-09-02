`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:08:24 08/29/2007 
// Design Name: 
// Module Name:    MUX_BL 
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
module MUX_BL(
    input [15:0] D0i,
    input [15:0] D1i,
    input [15:0] D2i,
    input [15:0] D3i,
    input [15:0] D4i,
    input [15:0] D5i,
    input [15:0] D6i,
    input [15:0] D7i,
    input [2:0] ADR,
    output wire [15:0] Dout
    );

assign Dout = (ADR == 0)?D0i:
					(ADR == 1)?D1i:
					(ADR == 2)?D2i:
					(ADR == 3)?D3i:
					(ADR == 4)?D4i:
					(ADR == 5)?D5i:
					(ADR == 6)?D6i: D7i;

endmodule
