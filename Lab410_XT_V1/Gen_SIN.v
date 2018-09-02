`timescale 1ns / 1ps


`include "CONST.v"
module Gen_SIN ( 					output reg S=0, //S=1 sin>0
						input clk, 	output reg[`m_X-1:0]X=0, //Xmin<=X<=Xmax
						input ce, 	output wire[`m-1:0]Y, //Y=NA*sin(2*pi*X/NP)
										output wire[`m:0]SIN); //SIN = S? NS+Y : NS-Y
//Старшие разряды SIN[`m] и NS[`m] - знаки
parameter Xmin=0 ;
parameter Xmax=`NP/4 ; //Xmax=`NP/4=20,
reg up=1 ; //Триггер направления счета
always @ (posedge clk) if (ce) begin
	X <= up? X+1 : X-1 ; //Генератор "пилы"
	up <= (X==Xmin+1)? 1 : (X==Xmax-1)? 0 : up ;
	S <= ((X==0) & up)? !S : S ;
end
//Y=NA*sin(2*pi*X/NP), NA=100 - амплитуда, NP=32 - число точек
assign Y = 	(X == 0)? 0:
				(X == 1)? 10:
				(X == 2)? 21:
				(X == 3)? 31:
				(X == 4)? 41:
				(X == 5)? 50:
				(X == 6)? 59:
				(X == 7)? 67:
				(X == 8)? 74:
				(X == 9)? 81:
			  (X == 10)? 87:
			  (X == 11)? 91:
			  (X == 12)? 95:
			  (X == 13)? 98:
			  (X == 14)? 99:
			  (X == 15)? 100: 0;
				
assign SIN = S? `NS+Y : `NS-Y ;
endmodule