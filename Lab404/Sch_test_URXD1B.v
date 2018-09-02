module Sch_test_URXD1B( input tx_clk, 		output wire TXD,
								input st, 			output wire[3:0]cb_bit_tx,
								input[7:0]tx_dat, output wire en_rx_byte,
								input rx_clk, 		output wire [7:0]sr_dat,
														output wire [3:0]cb_bit_rx,
														output wire ok_rx_byte,
														output wire start_rx,
														output wire T_start,
														output wire T_dat,
														output wire T_stop,
														output wire ce_tact,
														output wire ce_bit,
														output wire RXD);
UTXD1B DD1 (.clk(tx_clk), .TXD(TXD),
				.dat(tx_dat), .cb_bit(cb_bit_tx),
				.st(st)) ;

URXD1B DD2 (.Inp(TXD), 		.en_rx_byte(en_rx_byte),
				.clk(rx_clk), 	.sr_dat(sr_dat),
									.cb_bit(cb_bit_rx),
									.ok_rx_byte(ok_rx_byte),
									.start(start_rx),
									.T_start(T_start),
									.T_dat(T_dat),
									.T_stop(T_stop),
									.ce_tact(ce_tact),
									.ce_bit(ce_bit),
									.RXD(RXD));
endmodule
