`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:44 01/13/2017 
// Design Name: 
// Module Name:    ACCM 
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
`define a 16 //Число разрядов
module ACCM ( 	input [6:0] X, 	output reg [`a-1:0] ACC = 0,
					/*input ce,*/ 			output wire CO, 					//Сигнал переноса
					input clk, 			output reg Mx=0); 				//Меандр
parameter M=625 ; //F = X * 50Mhz / (50000) = X * 1kHz
assign CO = (X+ACC >= M); 													//Сигнал переноса CO=1 при X+ACC >= M
always @ (posedge clk) begin
	ACC <= CO? ACC + X - M : ACC + X; 										// Аккумулятор с емкостью M
	Mx <= CO? !Mx : Mx ; 												//Меандр
end
endmodule
