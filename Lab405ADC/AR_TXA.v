`include "CONST.v"
module AR_TXA(
	input clk, 		output wire[11:0] TXA,
	input [5:0]M, 	output wire TXD,
						output wire en_tx,
						output wire T_cp);

wire ce_bit, st, ce ;

reg [31:1]sr_dat=0 ;
reg FT_cp=1 ;

wire T_dat = en_tx & !T_cp ;

assign TXD = T_dat? sr_dat[31] : T_cp? FT_cp : 0 ;

//-- ���������� ������������ ����
always @ (posedge clk) begin
	FT_cp <= st? 1 : (sr_dat[31] & ce_bit & T_dat)? !FT_cp : FT_cp ;
	sr_dat <= st? `my_DAT : (en_tx & ce_bit)? sr_dat<<1 : sr_dat ;
end

//--������������� ������������� ������������������ ������
TX_TIMER DD1 ( .clk(clk), 	.ce_bit(ce_bit), //����� ���� (100 �����)
					.ce(ce), 	.en_tx(en_tx),
									.T_cp(T_cp),
									.st(st));

//--��������� ��������������� ���������
wire [11:0]MTRP ;
assign TXA = en_tx? MTRP : `NS0 ;

Gen_MTRP DD2 ( .clk(clk), 		.MTRP(MTRP),//����������, ��������� ��������
					.st(ce_bit), 	.ce(ce),		//������� ����� (10 ������)
					.S(TXD),
					.M(M));

endmodule
