`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:24:41 10/13/2016 
// Design Name: 
// Module Name:    DIV_AB_QF 
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
`define m_A `m_M
`define m_B `m_S
module DIV_AB_QF(
    input clk,
    input [`m_A - 1:0] A,
    input [`m_B - 1:0] B,
    input st,
    output wire [`m_A - 1:0] Q,
    output wire [`m_B - 1:0] F,
    output reg ok_div = 0,
    output reg [`m_A + `m_B - 1:0] bf_A = 0,
    output reg [`m_A + 2 * `m_B - 1:0] bf_B = 0
    );
reg [`m_A + `m_B - 1:0] sr_QF = 0; //Регистр сдвига частного
reg [7:0] cb_tact = 0; //Счётчик тактов деления
reg TQ = 0; //Интервал деления
wire bitQF = (bf_A >= bf_B); //Текущий бит деления
wire T_end = (cb_tact == `m_B + `m_A - 1); //Последний такт деления
assign Q = sr_QF[`m_B + `m_A - 1 : `m_B]; //Целая часть частного
assign F = sr_QF[`m_B - 1:0]; //Дробная часть частного

always @ (posedge clk) begin
	bf_A <= st ? A << `m_B : (TQ & bitQF) ? bf_A - bf_B : bf_A;
	bf_B <= st ? B << `m_B + `m_A - 1 : TQ ? bf_B >> 1 : bf_B;
	cb_tact <= st ? 0 : TQ ? cb_tact + 1 : cb_tact;
	TQ <= T_end ? 0 : st ? 1 : TQ;
	sr_QF <= st ? 0 : TQ ? sr_QF << 1 | bitQF : sr_QF; //Частное
	ok_div <= T_end;
	end

endmodule
