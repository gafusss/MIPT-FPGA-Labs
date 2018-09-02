`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:06:39 10/13/2016 
// Design Name: 
// Module Name:    Gen_TM 
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
`include "CONST_XY.v"
module Gen_TM(
    input clk,
    input st,
    input ce,
    output reg Tm = 0
    );
parameter NP = 1<<`m;
reg [`m_Y-1:0] cb_NP = 0;
reg Q_st = 0;
wire T_stop = (cb_NP == 1);
always @ (posedge clk) begin
	Q_st <= st ? 1 : ce ? 0 : Q_st;
	Tm <= (Q_st & ce) ? 1 : (T_stop & ce) ? 0 : Tm;
	cb_NP <= (Q_st & ce) ? NP : (Tm & ce) ? cb_NP - 1 : cb_NP;
	end

endmodule
