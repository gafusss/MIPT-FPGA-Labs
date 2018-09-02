`timescale 1ns / 1ps



`include "CONST.v"
module MUX_DAC(
					input [`m-1:0] A, output wire x0,
					input [`m-1:0] B, output wire x1,
					input [`m-1:0] C, output wire x2,
					input [`m-1:0] D, output wire x3,
					input S1, 			output wire x4,
					input S0, 			output wire x5,
											output wire x6,
											output wire x7 );
wire [1:0]adr = {S1,S0} ;
wire[7:0] E=(adr==0)? A :
				(adr==1)? B :
				(adr==2)? C : D ;
assign x0=E[0], x1=E[1], x2=E[2], x3=E[3], x4=E[4], x5=E[5], x6=E[6], x7=E[7] ;
endmodule