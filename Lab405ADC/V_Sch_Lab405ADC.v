`include "CONST.v"
module V_Sch_Lab405ADC(
input F50MHz,
input [7:0]SW,
//---������ ����������� ������ ��� ��� R-2R
output wire JA7,//DAC[0]
output wire JA8,//DAC[1]
output wire JA9,//DAC[2]
output wire JA10,//DAC[30]
output wire JB7,//DAC[4]
output wire JB8,//DAC[5]
output wire JB9,//DAC[6]
output wire JB10,//DAC[7]
//---����������� ������ ����������� ������
output wire JA1,//en_tx,
output wire JA2,//TXD,
//---������ ��������� ������
output wire JB1,//RXP
output wire JB2,//RXN
output wire JB3,//(RXP | RXN)
output reg LED7=0, //��������� ������ ������ 32 ���������
//---������ ������������� ���
output wire JC1,//ADC_clk
input JD3, //ADC_dat[11]
input JD2, //ADC_dat[10]
input JD8, //ADC_dat[9]
input JD1, //ADC_dat[8]
input JD7, //ADC_dat[7]
input JC10, //ADC_dat[6]
input JC4, //ADC_dat[5]
input JC9, //ADC_dat[4]
input JC3, //ADC_dat[3]
input JC8, //ADC_dat[2]
input JC2, //ADC_dat[1]
input JC7, //ADC_dat[0]
//-----������ ���� ����������� ����������
output wire [3:0] AN, //�����
output wire [6:0] seg, //��������
output wire seg_P); //�����
//---������ ����������� ��� ADC920
wire [11:0]ADC_dat = {JD3,JD2,JD8,JD1,JD7,JC10,JC4,JC9,JC3,JC8,JC2,JC7};//
//----------------------------------------------------------------------
wire clk, ce_tact, ce1s ;
//--���������� ����� ������� �������������
BUFG DD1 (.I(F50MHz), .O(clk));
//--��������� ������� ������������� ��� ��� ADC920
wire ADC_clk ;
Gen_ADC_clk DD2(.clk(clk), .M10M(ADC_clk));
assign JC1 = ADC_clk ;
//----��������� ��������� ������� ARINC-429
wire [11:0]TXA ; wire AR_en_tx, AR_TXD ;
AR_TXA DD3 ( .clk(clk), .TXA(TXA), .M(SW[5:0]), .en_tx(AR_en_tx),
.TXD(AR_TXD));
assign JA1 = AR_en_tx ; //�������� ����� ARINC-429
assign JA2 = AR_TXD ; //���������������� ������
//-- ������ ���������� AR_TXA ��� ��� R-2R
assign JA7 = TXA[4] ;
assign JA8 = TXA[5] ;
assign JA9 = TXA[6] ;
assign JA10= TXA[7] ;
assign JB7 = TXA[8] ;
assign JB8 = TXA[9] ;
assign JB9 = TXA[10] ;
assign JB10= TXA[11] ;
//--������ ��������� �����------------
wire RXP, RXN, res, err ;
wire [7:0]N_RXPN ;
RX_TIMER DD4 ( .clk(clk), .ce(ce_tact),
.RXP(RXP), .res(res),
.RXN(RXN), .N_RXPN(N_RXPN),
.err(err));
//--�������� ���� ---------------------
wire [11:0] X_SH ; wire [10:0] X_AMP ;
RX_MTRP DD5(
.Inp(ADC_dat), .RXP(RXP),
.clk(clk), .RXN(RXN),
.ce(ce_tact), .Xns(X_SH),
.res(res), .AMP(X_AMP));
assign JB1= RXP ;//����� ����������� ������������� ���������
assign JB2= RXN ;//����� ����������� ������������� ���������
assign JB3= (RXP | RXN) ;//
//--���������� �� 5000/4096
wire [11:0] U_SH ; wire [10:0] U_AMP ;
MULT_BL DD6 ( .X_AMP(X_AMP), .U_AMP(U_AMP),
.X_SH(X_SH), .U_SH(U_SH));
//--������������� ������ ��� ����������
wire [11:0]HEX_dat ;
MUX_dat DD7 ( .A(SW[5:0]), .E(HEX_dat),
.B(N_RXPN),
.C(U_AMP),
.D(U_SH),
.adr(SW[7:6]));
//--��������������� �������� ����� � ��������
wire [15:0]DEC_dat ;
BIN12_to_DEC4 DD8 (
.BIN(HEX_dat), .DEC(DEC_dat),
.clk(clk),
.st(ce1s));
//--���� ���������� ������������ ���������
DISPLAY DD9 (.clk(clk), .AN(AN), //�����
.dat(DEC_dat), .seg(seg), //��������
.PTR(SW[7]), .seg_P(seg_P), //�����
.ce1s(ce1s)); //�������
always @ (posedge clk or posedge ce1s) begin
LED7 <= ce1s? 0 : err? 1 : LED7 ;
end
endmodule