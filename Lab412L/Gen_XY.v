`timescale 1ns / 1ps


`include "PARAMETERS.v"

module Gen_XY( 					output reg [11:0] Q =`sX, //�������
					input st, 		output wire UP,//
					input clk, 		output wire [11:0] X, //��� DAC8512
					input [7:0]SW, output wire [11:0] Y); //��� ������������� DAC8043

wire CO=(Q==`sX+`dX) ; //����� �����

assign UP = (Q >=`sX); //UP=1 ���� Q ������ �������� `sX=2000
assign X = !SW[7]? Q: `sX - (SW[5:0]<<5) ; //X=2000-SW[5:0]*32 ��� SW[7]=1

wire [10:0]dQ = !UP? `sX-Q : Q-`sX; // dQ - ������ �������� (Q-2000)

assign Y = !SW[6]? dQ<<1 : (`dX - dQ)<<1 ; //Y=(2000-dQ)*2 ��� SW[6]=1 Y=dQ*2

always @ (posedge clk) if (st) begin
	Q <= CO? (`sX-`dX) : Q+1 ; //���� �� (2000-`dX) �� (2000+`dX)
end

endmodule
