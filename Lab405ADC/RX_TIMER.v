`include "CONST.v"
module RX_TIMER(
	input clk, 	output wire ce,				//Tce=Tbit/`NP ����� 10 ������
	input RXP, 	output wire res,				//����� � �����
	input RXN, 	output reg [7:0] N_RXPN=0,	//����� ��������� � "�����"
					output reg err=0);//������

reg tRXP=0, tRXN=0;

wire dRXP = RXP & !tRXP; //����� RXP
wire dRXN = RXN & !tRXN; //����� RXN

reg [5:0]cb_ce=0;

assign ce=(cb_ce==`Fclk/(`BR*`NP));//50000000/(100000*100)=5,...50000000/(12500*100)=40

reg [7:0] cb_RXPN=0 ;//������� ����� ��������� � "�����"

//--��������� ce
always @ (posedge clk) begin
	cb_ce <= ce? 1 : cb_ce+1 ;
end

//---��������� ������
reg [8:0] cb_res=0 ;//������� ������ � ����� ����� "�������"

assign res = (cb_res==(3*`NP)-1);//

reg tres = 0 ;
reg RCLK = 0 ;// RXP | RXN

always @ (posedge clk) if (ce) begin
	tRXP <= RXP ; tRXN <= RXN ;
	tres <= res ;
	RCLK <= (dRXP | dRXN) ;//
	cb_res <= (RCLK | res)? 0 : cb_res+1 ;//: ce? cb_res ;
	N_RXPN <= res? cb_RXPN : N_RXPN ;
	err <= (tres & !(N_RXPN==32))? 1 : 0 ;//������, ���� �� 32 ��������
end

//---���� ����� ��������� � "�����"
always @ (posedge tres or posedge RCLK) begin
	cb_RXPN <= tres? 0 : cb_RXPN+1 ;
end

endmodule
