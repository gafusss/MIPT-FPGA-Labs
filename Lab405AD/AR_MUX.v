`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:41 04/22/2017 
// Design Name: 
// Module Name:    AR_MUX 
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
module AR_MUX(
    input [7:0] ADR_TX,
    input [22:0] DAT_TX,
    input [7:0] ADR_RX,
    input [22:0] DAT_RX,
    input [1:0] S,
    output wire [15:0] DISPL
    );

wire [15:0] d0 = {ADR_TX, ADR_RX};
wire [15:0] d1 = {1'b0, DAT_TX[22:16], 1'b0, DAT_RX[22:16]};
wire [15:0] d2 = {DAT_TX[15:8], DAT_RX[15:8]};
wire [15:0] d3 = {DAT_TX[7:0], DAT_RX[7:0]};

assign DISPL = (S == 0)? d0 :
					(S == 1)? d1 :
					(S == 2)? d2 :
								 d3 ;

endmodule
