`timescale 1ns / 1ps

module BUF32bit(
    input ce,
    input [22:0] sr_dat,
    input [7:0] sr_adr,
    input clk,
    input R,
    output reg [22:0] RX_DAT = 0,
    output reg [7:0] RX_ADR = 0
    );


always @(posedge clk) begin

	RX_DAT <= (R) ? 0 : (ce) ? sr_dat : RX_DAT;
	RX_ADR <= (R) ? 0 : (ce) ? sr_adr : RX_ADR;

	end


endmodule
