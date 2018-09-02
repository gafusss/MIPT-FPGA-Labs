`timescale 1ns / 1ps


`include "CONST.v"
module SQRT_BL( 	input[`m*2-1:0]Q, output wire[`m-1:0] SQ,
						input st, 			output wire ok_SQ,
						input clk,
						input ce);
wire DI = (SQ*SQ<=Q);
//ћодуль регистра последовательного приближени€
SAR_BL DD1 ( 	.st(st), 	.Q(SQ),
					.ce(ce), 	.ok_SAR(ok_SQ),
					.D(DI),
					.clk(clk));
endmodule