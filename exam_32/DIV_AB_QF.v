`timescale 1ns / 1ps

`include "CONST.v"
`define m_A `m_M
`define m_B `m_S

module DIV_AB_QF (input clk,
						input [`m_A-1:0] A, 	output wire [`m_A-1:0] Q, //Целая часть
						input [`m_B-1:0] B, 	output wire [`m_B-1:0] F, //Дробная часть
						input st, 				output reg ok_div=0,
													output reg [`m_A+`m_B-1:0]bf_A=0, //Буфер делимого `m_A+`m_B разрядов
													output reg [`m_A+2*`m_B-1:0]bf_B=0); //Буфер делителя 2*`m_B +`m_A разрядов

reg [`m_A+`m_B-1:0]sr_QF=0 ; //Регистр сдвига частного `m_A+`m_B разрядов
reg[7:0]cb_tact=0 ; //счетчик тактов деления
reg TQ=0 ; //Интервал деления

wire bitQF = (bf_A>=bf_B) ; //Текущий бит деления
wire T_end = (cb_tact==`m_B+`m_A-1) ; //Последний такт деления

assign Q=sr_QF[`m_B+`m_A-1:`m_B]; //Целая часть частного
assign F=sr_QF[`m_B-1:0]; //Дробная часть частного

always @ (posedge clk) begin
	bf_A <= st? A<<`m_B : (TQ & bitQF)? bf_A-bf_B : bf_A ;
	bf_B <= st? B<<`m_B+`m_A-1: TQ? bf_B>>1 : bf_B ;
	cb_tact <= st? 0 : TQ? cb_tact+1 : cb_tact ;
	TQ <= T_end? 0 : st? 1 : TQ ;
	sr_QF <= st? 0: TQ? sr_QF<<1 | bitQF : sr_QF ; //частное
	ok_div <= T_end ;
end

endmodule
