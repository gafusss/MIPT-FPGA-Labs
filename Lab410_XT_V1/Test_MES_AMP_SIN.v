`timescale 1ns / 1ps


`include "CONST.v"
module Test_MES_AMP_SIN(
														output wire S, //S=1, sin(x)>0
								input clk, 			output wire ce_tact, //ce_tact
								input ce, 			output wire[`m:0]SIN, //SIN
								input[`m-1:0]NT, 	output wire ce_S1, //ce_SAMPL1
								input[`m:0]NS, 	output wire ce_S2, //ce_SAMPL2
								input we,			output wire [`m:0]S1, //SAMPL1
														output wire [`m:0]S2, //SAMPL2
														output wire [`m-1:0]mod_S1,//Модуль SAMPL1
														output wire [`m-1:0]mod_S2,//Модуль SAMPL2
														output wire ok_SQ, //Конец извлечения корня
														output wire [`m*2-1:0]AMP_QV, //Квадрат амплитуды
														output wire [`m-1:0]AMP_SIN); //Амплитуда SIN
// Модуль цифрового генератора синусоидального сигнала
Gen_SIN DD1 ( 	.ce(ce), 	.SIN(SIN),
					.clk(clk), 	.S(S) );
// Модуль квадратурной оценки амплитуды SIN
MES_AMP_SIN_XT DD2 ( .clk(clk), 	.ce_tact(ce_tact),
							.ce(ce), 	.ce_S1(ce_S1),
							.NT(NT), 	.ce_S2(ce_S2),
							.SIN(SIN), 	.S1(S1),
							.we(we),		.S2(S2),
											.mod_S1(mod_S1),
											.mod_S2(mod_S2),
											.AMP_QV(AMP_QV),
											.ok_SQ(ok_SQ),
											.AMP_SIN(AMP_SIN));
endmodule