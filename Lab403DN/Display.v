`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:04:44 08/29/2007 
// Design Name: 
// Module Name:    Display 
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
module Display (
input ce, output wire [3:0] AN, //Аноды светодиодов
input clk, output wire[6:0] SEG, //Сегменты (катоды)
input [15:0]DAT, output wire seg_P, //Точка
input [1:0]PTR);
wire [3:0]dig;
//Генератор "анодов"
reg [1:0] adr_dig = 0; //Счетчик номера цифры (анода)
assign AN =(adr_dig==0)? 4'b1110 : //включение цифры 0 (младшей)
(adr_dig==1)? 4'b1101 : //включение цифры 1
(adr_dig==2)? 4'b1011 : //включение цифры 2
4'b0111 ; //включение цифры 3 (старшей)
always @ (posedge clk) if (ce) begin
adr_dig <= adr_dig+1 ; //Адрес цифры
end
// Мультиплексор цифр
assign dig = (adr_dig==0)? DAT[3:0]: //Очередная цифра
(adr_dig==1)? DAT[7:4]:
(adr_dig==2)? DAT[11:8]:
DAT[15:12];
// Дешифратор семи сегментных символов цифр
// gfedcba сегменты
assign SEG = (dig==0)? 7'b1000000 : //0 a
(dig==1)? 7'b1111001 : //1 f b
(dig==2)? 7'b0100100 : //2 g
(dig==3)? 7'b0110000 : //3 e c
(dig==4)? 7'b0011001 : //4 d h
(dig==5)? 7'b0010010 : //5
(dig==6)? 7'b0000010 : //6
(dig==7)? 7'b1111000 : //7
(dig==8)? 7'b0000000 : //8
(dig==9)? 7'b0010000 : //9
(dig==10)? 7'b0001000 : //A
(dig==11)? 7'b0000011 : //b
(dig==12)? 7'b1000110 : //C
(dig==13)? 7'b0100001 : //d
(dig==14)? 7'b0000110 : //E
7'b0001110 ; //F
// Генератор точки
assign seg_P = !(PTR==adr_dig) ;
endmodule