`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:23 08/29/2007 
// Design Name: 
// Module Name:    Fmes_PR_WF 
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
module Fmes_PR_WF(
    input ce,
    input Ux,
    input clk,
    input st,
    output wire [`m_M - 1:0] Q,
    output wire [`m_S - 1:0] F,
    output wire Tm,
    output reg [`m_X - 1:0] X = 0,
    output reg [`m_Y - 1:0] Y = 0,
    output wire ce_end,
    output reg Q_Tm = 0,
    output wire ok_DIV
    );
	 
wire clk_Fx ;
reg tQ_Tm=0 ,ttQ_Tm=0 ;
assign ce_end=(!tQ_Tm & ttQ_Tm) ; //Конец синхронного времени измерения
//Выделение целого числа периодов
always @ (posedge clk_Fx) begin
	Q_Tm <= Tm ;//Импульс с длительностью целого числа периодов Tx
end
//Счет числа X периодов
always @ (negedge clk_Fx or posedge st) begin
	X <= st? 0 : Q_Tm? X+1 : X ;//Счет числа X с асинхронным сбросом
end
//Счет числа Y (число интервалов Tce в целом числе периодов)
always @ (posedge clk) begin
	Y <= st? 0 : (Q_Tm & ce)? Y+1 : Y ; //Счет числа Y счетчиком с синхронным сбросом
end

always @ (posedge clk) begin
	tQ_Tm <= Q_Tm ; ttQ_Tm <= tQ_Tm ;
end
// Глобальный буфер входного сигнала
BUFG DD1 (.I(Ux), .O(clk_Fx));
// Генератор времени измерения
Gen_TM DD2 (.st(st), .Tm(Tm),
				.clk(clk),
				.ce(ce));
// Арифметический умножитель
parameter NFce = `Fce ; // (см. CONST_XY.v)
wire[`m_M-1:0]M=X*NFce;
// Арифметический делитель
DIV_AB_QF DD3 ( .clk(clk), .ok_div(ok_DIV), //Конец деления
					.st(ce_end), .F(F), //Дробная часть частного
					.A(M), .Q(Q), //Целая часть частного
					.B(Y));
endmodule
