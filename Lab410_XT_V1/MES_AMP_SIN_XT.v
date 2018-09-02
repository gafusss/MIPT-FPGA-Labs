`timescale 1ns / 1ps


`include "CONST.v"
module MES_AMP_SIN_XT(
								input clk, 			output wire ce_tact, //строб импульс дискретизатора
								input ce, 			output wire ce_S1, //ce SAMPL1
								input [`m-1:0]NT, output wire ce_S2, //ce_SAMPL2
								input [`m:0]SIN, 	output reg [`m:0]S1=0, //SAMPL1
								input we, 			output reg [`m:0]S2=0, //SAMPL2
														output wire [`m-1:0]mod_S1,//Модуль SAMPL1
														output wire [`m-1:0]mod_S2,//Модуль SAMPL2
														output wire [`m*2-1:0]AMP_QV, //Квадрат амплитуды
														output wire ok_SQ, //Конец извлечения корня
														output reg [`m-1:0]AMP_SIN=0); //Оценка амплитуды SIN
//NT - Период дискретизации
reg[7:0] cb_tact=0 ; //Счетчик тактов
assign ce_tact = (cb_tact==NT) ; //Период дискретизации
assign ce_S1 = (cb_tact==`ND) ; //Строб первой выборки
assign ce_S2 = (cb_tact==`ND+NT/4); /*ce_S2 задержан относительно ce_S1 на четверть периода дискретизации (NT/4 тактов Tce)*/
assign mod_S1 = S1[`m-1]? -S1 : S1 ; //Модуль первой выборки
assign mod_S2 = S2[`m-1]? -S2 : S2 ; //Модуль второй выборки
assign AMP_QV = mod_S1*mod_S1 + mod_S2*mod_S2 ; //Сумма квадратов модулей
reg st_SQ =0; // Старт извлечения корня (задержанный на такт ce_S2)
wire [`m-1:0] SQ ; // Квадратный корень
reg twe =0 ;

always @ (posedge clk) if (ce) begin
	st_SQ <= ce_S2 ; //Задержка на такт ce_S2 для извлечения корня
	cb_tact <= ce_tact? 1 : cb_tact+1 ; //Счет тактов
	S1 <= ce_S1? SIN-`NS : S1 ; //Первая выборка (SAMPL1)
	S2 <= ce_S2? SIN-`NS : S2 ; //Вторая выборка (SAMPL2)
	twe <= ce_tact? we : twe ;
	AMP_SIN <= (ok_SQ & twe)? SQ : AMP_SIN ; //Буфер оценки амплитуды
end
//Модуль извлечения квадратного корня (приложение 6.2)
SQRT_BL DD2 ( 	.clk(clk), 		.SQ(SQ), // Квадратный корень
					.ce(ce), 		.ok_SQ(ok_SQ), //Конец извлечения корня
					.Q(AMP_QV), //Сумма квадратов выборок
					.st(st_SQ) ) ;
endmodule