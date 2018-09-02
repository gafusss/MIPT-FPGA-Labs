`timescale 1ns / 1ps


module TXD_RET_BL(
						input clk, 				output wire TXD,
						input st, 				output reg[15:0]rd_adr,
						input [ 7:0] com,
						input [ 7:0] lbl,
						input [15:0] adr,
						input [ 7:0] ret_dat);
						
reg [2:0]cb_tx_byte ;
wire ce_stop ;
reg en_tx_bl=0 ;
reg [7:0]cb_byte=0;
wire [15:0]tx_crc ;

always @ (posedge clk) begin
	cb_tx_byte <= st? 0 : (ce_stop & (cb_tx_byte<4) )? cb_tx_byte+1 : cb_tx_byte ;
	rd_adr <= st? adr : (ce_stop & (cb_tx_byte==4))? rd_adr+1 : rd_adr ;
end

wire[7:0]tx_lbl = (com==8'h00)? 4 ://com, lbl, adr[15:8], adr[7:0]
						(com==8'h80)? lbl + 4 ://com, lbl, adr[15:8], adr[7:0], ret_dat….
											1 ;//com
wire[7:0]tx_dat = (cb_tx_byte==0)? com :
						(cb_tx_byte==1)? lbl :
						(cb_tx_byte==2)? adr[15:8] :
						(cb_tx_byte==3)? adr[ 7:0] : ret_dat ;
wire txd_byte, ce_tact, en_sh ;

assign TXD = en_tx_bl? txd_byte : 1 ;
assign rep_start = st | ((cb_byte>1) & ce_stop) ;

wire T_hb_crc = (cb_byte==1) ;
wire T_lb_crc = (cb_byte==2) ;
wire T_dat = (cb_byte>2) ;
wire [7:0]dat_crc = T_hb_crc? tx_crc[15:8] : T_lb_crc? tx_crc[7:0] : tx_dat;
wire ce_crc = T_dat & ce_tact & en_sh ;

always @ (posedge clk) begin
	cb_byte <= st? tx_lbl+2 : ce_stop? cb_byte-1 : cb_byte ;
	en_tx_bl <= ((cb_byte==1) & ce_stop)? 0 :st? 1 :en_tx_bl ;
end

//---Передача одного байта------
UTXD_1byte DD1(.clk(clk), 			.ce_stop(ce_stop),
					.dat(dat_crc), 	.txd(txd_byte),
					.st(rep_start), 	.ce(ce_tact),
					.en_sh(en_sh));
//---Вычисление CRC кода------------
CRC_BL DD2 (.ce(ce_crc), 	.crc(tx_crc),
				.clk(clk),
				.st(st),
				.in(txd_byte));

endmodule
