`timescale 1ns / 1ps


`include "CONST.v"

module MAIN(
				input F50MHz, output wire JD4,//TXD
				input JD3,		output wire JA3,//RXD   Gen_M
				input BTN0, //measure
				input BTN3, //++
				input SW7, //up?
				input JB3 // fmes
				);				
wire clk ;
BUFG DD1 (.I(F50MHz), .O(clk));

wire ce5ms;
wire ce10ms;

Gen_5ms DD2 (.clk(clk), .st(ce5ms));
Gen_10ms DD3 ( .ce5ms(ce5ms), .st(ce10ms),
					.clk(clk));


wire [7:0]rd_dat ;
wire [7:0]wr_dat ;
wire [15:0]wr_adr ;
wire [15:0]rd_adr ;
wire ce_wr_dat, st_tx_bl ;

//---������ �������� � ������ ��������� ���������� ComChange
/*
RX_TX_UART_BL DD4 (
							.clk(clk), 			.TXD(JD4),
							.RXD(JD3), 			.ce_wr_dat(ce_wr_dat),
							.rd_dat(rd_dat), 	.wr_dat(wr_dat),
													.wr_adr(wr_adr),
													.rd_adr(rd_adr),
													.st_tx_bl(st_tx_bl));*/
wire COM_wr_reg, COM_rd_reg;
wire ce_wr_reg = ce_wr_dat & COM_wr_reg ;

UART_RX_TX DD4 ( .clk(clk), 			.TXD(JD4),
						.RXD(JD3), 			.rd_adr(rd_adr),
						.rd_dat(rd_dat), 	.wr_adr(wr_adr),
												.sr_dat_rx(wr_dat),
												.ce_wr_dat(ce_wr_dat),
												.en_tx_bl(st_tx_bl),
												.COM_wr_reg(COM_wr_reg),
												.COM_rd_reg(COM_rd_reg));


reg [15:0] DEC_X = 1;
wire [15:0] BIN_XL;
wire [15:0] BIN_X;
wire [15:0] BIN_Q;
wire [15:0] BIN_F;
wire [15:0] DEC_Q;
wire [31:0] DEC_F;

DEC4_to_BIN16 DD5(.DEC(DEC_X), .BIN(BIN_XL));

/*

    input ce,
    input up,
    input [9:0] di,
    input L,
    input clk,
    input clr,
    output reg [9:0] Q = 0,
    output wire CEO,
    output wire TC
*/

reg t_ce_wr_dat = 0;
					
wire b0;
wire b3;
					
BTN_BL DD7 (.BTN(BTN0), .st(b0),
				.ce(ce10ms),
				.clk(clk));
BTN_BL DD8 (.BTN(BTN3), .st(b3),
				.ce(ce10ms),
				.clk(clk));

VCB10CLED DD6 (.ce(b3),    	.Q(BIN_X),
					.up(SW7),	 	.CEO(),
					.di(BIN_XL),	 .TC(),
					.L(t_ce_wr_dat),
					.clk(clk),
					.clr());

Gen_M DD9 ( .clk(clk), 			.s(JA3),
				.ce5ms(ce5ms),
				.x(BIN_X));

/*
reg [15:0]DEC_A=0 ;//������ �������� �����������
reg [15:0]DEC_B=0 ;//������ �������� �����������
wire [15:0]BIN_A ;//������ �������� �����������
wire [15:0]BIN_B ;//������ �������� �����������
wire [31:0]BIN_M ;//�������� ������������
wire [31:0]DEC_M ;//�������� ������������

//--�������������� ������� ���������� ������������ � �������� ���
DEC4_to_BIN16 DD3(.DEC(DEC_A), .BIN(BIN_A));
DEC4_to_BIN16 DD4(.DEC(DEC_B), .BIN(BIN_B));

//---���������
assign BIN_M = BIN_A*BIN_B ;
//--�������������� ��������� ������������ � ������� ����������
BIN32_to_DEC8 DD5 ( .BIN(BIN_M), .DEC(DEC_M),
						  .clk(clk),
						  .st(st_tx_bl));
						  
*/

//---�������� ��������� ������������ DEC_A � DEC_B
always @ (posedge clk) if (ce_wr_reg) begin
	DEC_X [15:8] <= (wr_adr==16'h0000)? wr_dat : DEC_X [15:8] ;//����������� DEC_A
	DEC_X [ 7:0] <= (wr_adr==16'h0001)? wr_dat : DEC_X [ 7:0] ;//����������� DEC_A
end

always @ (posedge clk) begin
	t_ce_wr_dat <= ce_wr_dat;
end
/*

						input ce, 	output wire[`m_M-1:0] Q, //����� ����� ��������
						input Ux, 	output wire[`m_S-1:0] F, //������� ����� ��������
						input clk, 	output wire Tm, //�������� ���������
						input st,	output reg [`m_X-1:0]X=0, //������� X
										output reg [`m_Y-1:0]Y=0, //������� Y
										output wire ce_end, //����� ����������� ������� ���������
										output reg Q_Tm=0, //���������� � Tx �������� ���������
										output wire ok_DIV); //����� �������
*/

wire fmes_f;

//[5:0]
wire[`m_S-1:0] FFF;

Fmes_PR_WF DD10 (.ce(ce10ms),    .Q(BIN_Q),
						.Ux(JB3),	.F(FFF),
						.clk(clk),	.Tm(),
						.st(b0),	.X(),
									.Y(),
									.ce_end(),
									.Q_Tm(),
									.ok_DIV(fmes_f));
									

assign BIN_F = {FFF, 10'b0000000000}; //5-0 = 6, //FIXME 


BIN16_to_DEC4 DD11 (.BIN(BIN_Q),	.DEC(DEC_Q),
							.clk(clk),	.ptr_dig(),
							.st(fmes_f),	.en_conv(),
										.ok());

wire fd_f;
wire [31:0] FFFFFFFFFFF;
			
FB16_to_FD27 DD12 (.FBI(BIN_F),			.FDO(FFFFFFFFFFF),
						.clk(clk),			.cb_tact(),
						.st(fmes_f),			.EN_conv(),
											.ok_conv(fd_f));

BIN32_to_DEC8 DD13 (.BIN(FFFFFFFFFFF),	.DEC(DEC_F),
							.clk(clk),	.ptr_dig(),
							.st(fd_f),	.en_conv(),
										.ok_conv());



//---������ ��������� ������������ � ������������
assign rd_dat= (rd_adr==16'h0000)? DEC_X [15: 8] : //����������� DEC_A
					(rd_adr==16'h0001)? DEC_X [ 7: 0] : //����������� DEC_A
					(rd_adr==16'h0002)? BIN_XL [15: 8] : //�����������DEC_B
					(rd_adr==16'h0003)? BIN_XL [ 7: 0] : //����������� DEC_B
					(rd_adr==16'h0004)? BIN_X [15:8] : //4-����� DEC_M
					(rd_adr==16'h0005)? BIN_X [7:0] : //3-����� DEC_M
					(rd_adr==16'h0006)? BIN_Q [15: 8] : //2-����� DEC_M
					(rd_adr==16'h0007)? BIN_Q [ 7: 0] : //1-����� DEC_M
					(rd_adr==16'h0008)? BIN_F [15: 8] : //����������� BIN_A
					(rd_adr==16'h0009)? BIN_F [ 7: 0] : //����������� BIN_A
					(rd_adr==16'h000A)? DEC_Q [15: 8] : //�����������BIN_B
					(rd_adr==16'h000B)? DEC_Q [ 7: 0] : //����������� BIN_B
					(rd_adr==16'h000C)? DEC_F [31:24] : //4-����� BIN_M
					(rd_adr==16'h000D)? DEC_F [23:16] : //3-����� BIN_M
					(rd_adr==16'h000E)? DEC_F [15: 8] : //2-����� BIN_M
					(rd_adr==16'h000F)? DEC_F [ 7: 0] : //1-����� BIN_M
											  0 ;
endmodule
