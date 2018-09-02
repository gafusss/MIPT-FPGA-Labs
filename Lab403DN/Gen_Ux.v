`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:02:03 08/29/2007 
// Design Name: 
// Module Name:    Gen_Ux 
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
`include "CONST_XY.v"
module Gen_Ux( input clk, output reg ceo=0,
					input up, output wire ce1ms, //��� ���������� "��������" ������
					input BTN, output reg Ux=0,
									output reg[15:0]Xf=49);//(NFx ��. � ������� 2)
parameter F1kHz = 1000 ;
reg [15:0]cb_ce1ms=0 ; //������� 1 �����������
assign ce1ms = (cb_ce1ms==`Fclk/F1kHz) ;
reg [15:0]cb_ce=0 ; //������� ce ����������� ������� Ux
wire ce = (cb_ce==`Nce) ; //
reg tBTN=0, ttBTN=0 ; //2 D-�������� ������
wire dBTN = tBTN & !ttBTN & ce1ms; //���������� "��������" ������
always @ (posedge clk) begin
	cb_ce1ms <= ce1ms? 1 : cb_ce1ms+1 ;
	cb_ce <= ce? 1 : cb_ce+1 ;
	tBTN <= ce1ms? BTN : tBTN ; ttBTN <= ce1ms? tBTN : ttBTN ;
	Xf <= (up & dBTN)? Xf+1 : (!up & dBTN)? Xf-1 : Xf ; //����������� ������� X
	ceo <= ce ;
end
// ���������� �������
parameter M=100000 ; //������� ������������
reg[16:0]ACC=0 ; //������� ������������
wire co = (ACC>=M) ; //������ �������� (������������)
always @ (posedge clk) if (ce) begin
	ACC <= co? ACC+Xf-M : ACC+Xf ;
	Ux <= co ; //������� �� ������
end

endmodule