`timescale 1ns / 1ps


`include "CONST.v"
module SAR_BL(
					input st, 	output reg ok_SAR=0, //����� ����������������� �����������
					input ce, 	output reg [`m-1:0] Q=0, //������� ������ ������ �����������
					input D, 	output reg[`m:0] T=0, //������� ������ "�������" �������
					input clk );
integer i;
always @ (posedge clk) if (ce) begin
	T <= st? 1<<`m: T>>1 ; //�������� � ����� �������� "�������" �������
	Q[`m-1] <= st? 1 : T[`m]? D : Q[`m-1] ; //�������� 1 � ������� ������ � ����� D
	for (i=`m-2 ; i >= 0; i=i-1) //���� for �� i
		Q[i] <= st? 0 : T[i+2]? 1 : T[i+1]? D : Q[i] ; //������� ��������� Q[i] � 1, � ����� � D
		ok_SAR <= T[0] ; //����� ����������������� �����������
	end
endmodule