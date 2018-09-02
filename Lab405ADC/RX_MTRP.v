`include "CONST.v"
module RX_MTRP(
	input [11:0]Inp,
	input clk, 			output wire [11:0]MEM_dat,	//����������� ��������
	input ce, 			output reg [11:0]Xmax=0,	//������� �������� ������������� ���������
	input res, 			output reg [11:0]Xns=`NS0,	//��������
							output reg [11:0]Xmin=4095,//������� �������� ������������� ���������
							output wire [11:0]REF_P,	//����� ����������� ������������� ���������
							output wire [11:0]REF_N,	//����� ����������� ������������� ���������
							output wire RXP,				//����� ����������� ������������� ���������
							output wire RXN,				//����� ����������� ������������� ���������
							output reg [10:0]AMP=0);	// ������� ��������� ��������� � �����
							
reg [11:0]tInp=`NS0 ; //reg tRXP=0 ; reg tRXN=0 ;
reg tres=0 ;
reg [6:0]Adr_wr=0;

wire [11:0]Amp_P = Xmax-Xns ; //��������� �������������� ��������
wire [11:0]Amp_N = Xns-Xmin ; //��������� �������������� ��������

assign REF_P = Xns+(Amp_P>>1) ; //����� ����������� �������������� ��������
assign REF_N = Xns-(Amp_N>>1) ; //����� ����������� �������������� ��������
assign RXP=(Amp_P>`Azer)? (MEM_dat>REF_P) : 0 ;
assign RXN=(Amp_N>`Azer)? (MEM_dat<REF_N) : 0 ;

always @ (posedge clk) if (ce) begin
	Adr_wr <= Adr_wr+1 ;
	tInp <= Inp ;
	tres <= res ;
	Xmax <= tres? Xns+`Azer : (tInp>Xmax)? tInp : Xmax ; //
	Xmin <= tres? Xns-`Azer : (tInp<Xmin)? tInp : Xmin ; //
	AMP = tres? (Xmax-Xmin)>>1 : AMP ;//
	Xns <= tres? tInp : Xns ; //
end

wire [6:0]Adr_rd = Adr_wr-`NP/4; //�������� �� 25 ������ (������� Tbit)

//--������ ������ ��� �������� ���������
SMEM_12x128 DD1 (
	.clk(clk), .DO(MEM_dat),
	.we(ce),
	.DI(tInp),
	.Adr_wr(Adr_wr),
	.Adr_rd(Adr_rd));

endmodule
