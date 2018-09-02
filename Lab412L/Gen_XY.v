`timescale 1ns / 1ps


`include "PARAMETERS.v"

module Gen_XY( 					output reg [11:0] Q =`sX, //Счетчик
					input st, 		output wire UP,//
					input clk, 		output wire [11:0] X, //Для DAC8512
					input [7:0]SW, output wire [11:0] Y); //Для множительного DAC8043

wire CO=(Q==`sX+`dX) ; //Конец цикла

assign UP = (Q >=`sX); //UP=1 если Q больше смещения `sX=2000
assign X = !SW[7]? Q: `sX - (SW[5:0]<<5) ; //X=2000-SW[5:0]*32 при SW[7]=1

wire [10:0]dQ = !UP? `sX-Q : Q-`sX; // dQ - модуль разности (Q-2000)

assign Y = !SW[6]? dQ<<1 : (`dX - dQ)<<1 ; //Y=(2000-dQ)*2 при SW[6]=1 Y=dQ*2

always @ (posedge clk) if (st) begin
	Q <= CO? (`sX-`dX) : Q+1 ; //Счет от (2000-`dX) до (2000+`dX)
end

endmodule
