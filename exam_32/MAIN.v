`timescale 1ns / 1ps


`include "CONST.v"

module MAIN(
				input F50MHz, output wire JD4,//TXD
				input JD3,		output wire JB3,//RXD
				input BTN0,
				input JC3
				);				
wire clk ;
BUFG DD1 (.I(F50MHz), .O(clk));

wire ce1us;

Gen_us DD2 (.clk(clk), .st(ce1us));


wire [7:0]rd_dat ;
wire [7:0]wr_dat ;
wire [15:0]wr_adr ;
wire [15:0]rd_adr ;
wire ce_wr_dat, st_tx_bl ;

wire COM_wr_reg, COM_rd_reg;
wire ce_wr_reg = ce_wr_dat & COM_wr_reg ;

UART_RX_TX DD3 ( .clk(clk), 			.TXD(JD4),
						.RXD(JD3), 			.rd_adr(rd_adr),
						.rd_dat(rd_dat), 	.wr_adr(wr_adr),
												.sr_dat_rx(wr_dat),
												.ce_wr_dat(ce_wr_dat),
												.en_tx_bl(st_tx_bl),
												.COM_wr_reg(COM_wr_reg),
												.COM_rd_reg(COM_rd_reg));


reg [15:0] DEC_X = 1;
wire [15:0] BIN_X;
wire [15:0] BIN_sqX = BIN_X[7:0] * BIN_X[7:0];
wire [15:0] BIN_Q;
wire [15:0] BIN_F;
wire [31:0] DEC_Q;
wire [31:0] DEC_F;

DEC4_to_BIN16 DD4(.DEC(DEC_X), .BIN(BIN_X));
					
wire bt0;
					
BTN_BL DD5 (.BTN(BTN0), .st(bt0),
				.clk(clk));



Gen_IMP DD6 ( 	.clk(clk), 			.imp(JB3),
					.ce1us(ce1us),
					.sqX(BIN_sqX));


//---Загрузка регистров сомножителей DEC_A и DEC_B
always @ (posedge clk) if (ce_wr_reg) begin
	DEC_X [15:8] <= (wr_adr==16'h0000)? wr_dat : DEC_X [15:8] ;//Старшийбайт DEC_A
	DEC_X [ 7:0] <= (wr_adr==16'h0001)? wr_dat : DEC_X [ 7:0] ;//Младшийбайт DEC_A
end

///////////

wire fmes_f;


Fmes_PR_WF DD7 (.ce(ce1us),    .Q(BIN_Q),
						.Ux(JC3),	.F(BIN_F),
						.clk(clk),	.Tm(),
						.st(bt0),	.X(),
									.Y(),
									.ce_end(),
									.Q_Tm(),
									.ok_DIV(fmes_f));
								
wire [31:0] BIN_Q32 = {16'h0000, BIN_Q};

BIN32_to_DEC8 DD8 (.BIN(BIN_Q32),	.DEC(DEC_Q),
							.clk(clk),	.ptr_dig(),
							.st(fmes_f),	.en_conv(),
										.ok_conv());										



wire fd_f;
wire [31:0] FDO;
			
FB16_to_FD27 DD9 (.FBI(BIN_F),			.FDO(FDO),
						.clk(clk),			.cb_tact(),
						.st(fmes_f),			.EN_conv(),
											.ok_conv(fd_f));

BIN32_to_DEC8 DD10 (.BIN(FDO),	.DEC(DEC_F),
							.clk(clk),	.ptr_dig(),
							.st(fd_f),	.en_conv(),
										.ok_conv());



//---Чтение регистров сомножителей и произведения
assign rd_dat= (rd_adr==16'h0000)? DEC_X [15: 8] : //Старшийбайт DEC_A
					(rd_adr==16'h0001)? DEC_X [ 7: 0] : //Младшийбайт DEC_A
					(rd_adr==16'h0002)? BIN_X [15: 8] : //СтаршийбайтDEC_B
					(rd_adr==16'h0003)? BIN_X [ 7: 0] : //Младшийбайт DEC_B
					(rd_adr==16'h0004)? BIN_sqX [15:8] : //4-йбайт DEC_M
					(rd_adr==16'h0005)? BIN_sqX [7:0] : //3-йбайт DEC_M
					(rd_adr==16'h0006)? BIN_Q [15: 8] : //2-йбайт DEC_M
					(rd_adr==16'h0007)? BIN_Q [ 7: 0] : //1-йбайт DEC_M
					(rd_adr==16'h0008)? BIN_F [15: 8] : //Старшийбайт BIN_A
					(rd_adr==16'h0009)? BIN_F [ 7: 0] : //Младшийбайт BIN_A
					(rd_adr==16'h000A)? DEC_Q [31: 24] : //СтаршийбайтBIN_B
					(rd_adr==16'h000B)? DEC_Q [ 23: 16] : //Младшийбайт BIN_B
					(rd_adr==16'h000C)? DEC_Q [15: 8] : //СтаршийбайтBIN_B
					(rd_adr==16'h000D)? DEC_Q [ 7: 0] : //Младшийбайт BIN_B
					(rd_adr==16'h000E)? DEC_F [31:24] : //4-йбайт BIN_M
					(rd_adr==16'h000F)? DEC_F [23:16] : //3-йбайт BIN_M
					(rd_adr==16'h0010)? DEC_F [15: 8] : //2-йбайт BIN_M
					(rd_adr==16'h0011)? DEC_F [ 7: 0] : //1-йбайт BIN_M
											  0 ;
endmodule
