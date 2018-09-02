`timescale 1ns / 1ps


module UTXD_1byte(input clk, 		output wire ce_stop,
						input[7:0]dat, output wire txd,
						input st, 		output wire ce,
											output reg en_tx=0,
											output reg [3:0] cb_bit,
											output wire en_sh,
											output reg [7:0] sr_dat=0,
											output wire T_start);

parameter Fclk=50000000 ; parameter COM_vel = 115200 ;

reg [8:0]cb_tact=0 ;

assign dst = st & !en_tx ;
assign ce = (cb_tact==Fclk/COM_vel-1) ;
assign T_start = ((cb_bit==0) & en_tx) ;
assign en_sh = (cb_bit<9) & (cb_bit>0);

wire T_stop = (cb_bit==9) ;

assign ce_stop = T_stop & ce ;
assign txd = T_start? 0 : en_tx? sr_dat[0] : 1 ;

always @ (posedge clk) begin
	cb_tact <= (dst | ce)? 0 : cb_tact+1 ;
	en_tx <= st? 1 : (T_stop & ce)? 0 : en_tx ;
	cb_bit <= st? 0 : (ce & en_tx)? cb_bit+1 : cb_bit ;
	sr_dat <= (T_start &ce)? dat : (en_sh & ce)? sr_dat>>1 | 1<<7 : sr_dat ;
end

endmodule
