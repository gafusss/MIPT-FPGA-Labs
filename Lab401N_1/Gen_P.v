`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:41:48 08/29/2007 
// Design Name: 
// Module Name:    Gen_P 
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
module Gen_P(
    input [1:0] ptr,
    input [1:0] adr_An,
    output wire seg_P
    );
assign seg_P = !(ptr == adr_An);
endmodule
