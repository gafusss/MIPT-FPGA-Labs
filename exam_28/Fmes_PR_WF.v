`timescale 1ns / 1ps

`include "CONST.v"

module Fmes_PR_WF(
						input ce, 	output wire[`m_M-1:0] Q, //Целая часть частного
						input Ux, 	output wire[`m_S-1:0] F, //Дробная часть частного
						input clk, 	output wire Tm, //Интервал измерения
						input st,	output reg [`m_X-1:0]X=0, //Счетчик X
										output reg [`m_Y-1:0]Y=0, //Счетчик Y
										output wire ce_end, //Конец синхронного времени измерения
										output reg Q_Tm=0, //Синхронный с Tx интервал измерения
										output wire ok_DIV); //Конец деления

wire clk_Fx ;
// Глобальный буфер входного сигнала
IBUFG DD1 (.I(Ux), .O(clk_Fx));
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


// Генератор времени измерения
Gen_TM DD2 (.st(st), .Tm(Tm),
				.clk(clk),
				.ce(ce));

// Арифметический умножитель
parameter NFce = `Fce ; // (см. CONST_XY.v)

wire[`m_M-1:0]M=X*NFce;

// Арифметический делитель
DIV_AB_QF DD3 (.clk(clk), 	.ok_div(ok_DIV), //Конец деления
					.st(ce_end),.F(F), //Дробная часть частного
					.A(M), 		.Q(Q), //Целая часть частного
					.B(Y));

endmodule
