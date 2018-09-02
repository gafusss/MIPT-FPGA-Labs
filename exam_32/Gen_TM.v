`timescale 1ns / 1ps


`include "CONST.v"

module Gen_TM( input clk, output reg Tm=0, //�������� ���������
					input st,
					input ce); //Tce - ������ �������
					
parameter NP=1<<`m; //����� Tce � Tm

reg [`m_Y-1:0]cb_NP=0; //������� ����� Tce � Tm
reg Q_st =0 ; //������������� ������

wire T_stop = (cb_NP==1); //����� ��������

always @ (posedge clk) begin
	Q_st <= st? 1 : ce? 0 : Q_st ;
	Tm <= (Q_st & ce)? 1 : (T_stop & ce)? 0 : Tm ;
	cb_NP <= (Q_st & ce)? NP : (Tm & ce)? cb_NP-1 : cb_NP ;
end

endmodule
