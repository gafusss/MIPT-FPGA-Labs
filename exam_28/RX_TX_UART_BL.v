`timescale 1ns / 1ps


module RX_TX_UART_BL (
								input clk, 				output wire TXD,
								input RXD, 				output wire[15:0] rd_adr,
								input [7:0]rd_dat,	output wire[15:0] wr_adr,
															output wire [7:0] wr_dat,
															output wire ce_wr_dat,
															output wire st_tx_bl);
//---Прием блока байт

URXD_BL DD2 (
				.RXD(RXD), 	.com(rx_com),
				.clk(clk), 	.lbl(rx_lbl),
								.adr(wr_adr),//.wr_adr(wr_adr),
								.rx_dat(wr_dat),
								//.rd_adr(rd_adr), 
								.ce_wr_dat(ce_wr_dat), 
								.ok_rx_bl(st_tx_bl));
//---Передача блока байт
TXD_RET_BL DD3 (
						.clk(clk), 		.TXD(TXD),
						.st(st_tx_bl), .rd_adr(rd_adr),
						.lbl(rx_lbl),
						.com(rx_com),
						.adr(wr_adr),
						.ret_dat(rd_dat));
endmodule
