`timescale 1ns / 1ps


`include "CONST.v"
module SAR_BL(
					input st, 	output reg ok_SAR=0, //Конец последовательного приближения
					input ce, 	output reg [`m-1:0] Q=0, //Регистр сдвига данных компаратора
					input D, 	output reg[`m:0] T=0, //Регистр сдвига "пробной" единицы
					input clk );
integer i;
always @ (posedge clk) if (ce) begin
	T <= st? 1<<`m: T>>1 ; //Загрузка и сдвиг регистра "пробной" единицы
	Q[`m-1] <= st? 1 : T[`m]? D : Q[`m-1] ; //Загрузка 1 в старший разряд и прием D
	for (i=`m-2 ; i >= 0; i=i-1) //Цикл for по i
		Q[i] <= st? 0 : T[i+2]? 1 : T[i+1]? D : Q[i] ; //Пробная установка Q[i] в 1, а затем в D
		ok_SAR <= T[0] ; //Конец последовательного приближения
	end
endmodule