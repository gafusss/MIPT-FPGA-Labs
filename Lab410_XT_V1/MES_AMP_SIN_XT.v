`timescale 1ns / 1ps


`include "CONST.v"
module MES_AMP_SIN_XT(
								input clk, 			output wire ce_tact, //����� ������� ��������������
								input ce, 			output wire ce_S1, //ce SAMPL1
								input [`m-1:0]NT, output wire ce_S2, //ce_SAMPL2
								input [`m:0]SIN, 	output reg [`m:0]S1=0, //SAMPL1
								input we, 			output reg [`m:0]S2=0, //SAMPL2
														output wire [`m-1:0]mod_S1,//������ SAMPL1
														output wire [`m-1:0]mod_S2,//������ SAMPL2
														output wire [`m*2-1:0]AMP_QV, //������� ���������
														output wire ok_SQ, //����� ���������� �����
														output reg [`m-1:0]AMP_SIN=0); //������ ��������� SIN
//NT - ������ �������������
reg[7:0] cb_tact=0 ; //������� ������
assign ce_tact = (cb_tact==NT) ; //������ �������������
assign ce_S1 = (cb_tact==`ND) ; //����� ������ �������
assign ce_S2 = (cb_tact==`ND+NT/4); /*ce_S2 �������� ������������ ce_S1 �� �������� ������� ������������� (NT/4 ������ Tce)*/
assign mod_S1 = S1[`m-1]? -S1 : S1 ; //������ ������ �������
assign mod_S2 = S2[`m-1]? -S2 : S2 ; //������ ������ �������
assign AMP_QV = mod_S1*mod_S1 + mod_S2*mod_S2 ; //����� ��������� �������
reg st_SQ =0; // ����� ���������� ����� (����������� �� ���� ce_S2)
wire [`m-1:0] SQ ; // ���������� ������
reg twe =0 ;

always @ (posedge clk) if (ce) begin
	st_SQ <= ce_S2 ; //�������� �� ���� ce_S2 ��� ���������� �����
	cb_tact <= ce_tact? 1 : cb_tact+1 ; //���� ������
	S1 <= ce_S1? SIN-`NS : S1 ; //������ ������� (SAMPL1)
	S2 <= ce_S2? SIN-`NS : S2 ; //������ ������� (SAMPL2)
	twe <= ce_tact? we : twe ;
	AMP_SIN <= (ok_SQ & twe)? SQ : AMP_SIN ; //����� ������ ���������
end
//������ ���������� ����������� ����� (���������� 6.2)
SQRT_BL DD2 ( 	.clk(clk), 		.SQ(SQ), // ���������� ������
					.ce(ce), 		.ok_SQ(ok_SQ), //����� ���������� �����
					.Q(AMP_QV), //����� ��������� �������
					.st(st_SQ) ) ;
endmodule