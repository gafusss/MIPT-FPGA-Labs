`timescale 1ns / 1ps

`include "CONST.v"
`define m_A `m_M
`define m_B `m_S

module DIV_AB_QF (input clk,
						input [`m_A-1:0] A, 	output wire [`m_A-1:0] Q, //����� �����
						input [`m_B-1:0] B, 	output wire [`m_B-1:0] F, //������� �����
						input st, 				output reg ok_div=0,
													output reg [`m_A+`m_B-1:0]bf_A=0, //����� �������� `m_A+`m_B ��������
													output reg [`m_A+2*`m_B-1:0]bf_B=0); //����� �������� 2*`m_B +`m_A ��������

reg [`m_A+`m_B-1:0]sr_QF=0 ; //������� ������ �������� `m_A+`m_B ��������
reg[7:0]cb_tact=0 ; //������� ������ �������
reg TQ=0 ; //�������� �������

wire bitQF = (bf_A>=bf_B) ; //������� ��� �������
wire T_end = (cb_tact==`m_B+`m_A-1) ; //��������� ���� �������

assign Q=sr_QF[`m_B+`m_A-1:`m_B]; //����� ����� ��������
assign F=sr_QF[`m_B-1:0]; //������� ����� ��������

always @ (posedge clk) begin
	bf_A <= st? A<<`m_B : (TQ & bitQF)? bf_A-bf_B : bf_A ;
	bf_B <= st? B<<`m_B+`m_A-1: TQ? bf_B>>1 : bf_B ;
	cb_tact <= st? 0 : TQ? cb_tact+1 : cb_tact ;
	TQ <= T_end? 0 : st? 1 : TQ ;
	sr_QF <= st? 0: TQ? sr_QF<<1 | bitQF : sr_QF ; //�������
	ok_div <= T_end ;
end

endmodule
