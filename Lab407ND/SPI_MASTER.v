`timescale 1ns / 1ps

module SPI_MASTER(	input st,			output reg LOAD = 1,
							input clk,			output reg SCLK = 0,
							input MISO,			output wire MOSI,
							input clr,			output wire ce,
							input [14:0] DI,	output wire ce_tact,
													output reg [7:0] cb_bit = 0,
													output reg [14:0] sr_MTX = 0,
													output reg [14:0] sr_MRX = 0,
													output reg [14:0] DO = 0
    );

reg [7:0] cb_tact = 0;

// Tbit = 4us = 4000ns = 200 Tclk
parameter Nt = (4000/20)/2; // 200


wire START = st & LOAD;
assign ce = (cb_tact == (Nt-1));
assign ce_tact = SCLK & ce;
wire S_LOAD = ce_tact & (cb_bit == 14);

assign MOSI = sr_MTX[14];

always @ (posedge clk) begin
	cb_tact <= (START | ce) ? 0 : cb_tact + 1;
	SCLK <= LOAD ? 0 : ce ? SCLK + 1 : SCLK;
	cb_bit <= START ? 0 : ce_tact ? cb_bit + 1 : cb_bit;
	LOAD <= S_LOAD ? 1 : st ? 0 : LOAD;
	
	sr_MTX <= LOAD? DI : ce_tact ? sr_MTX << 1 : sr_MTX;
end

always @ (posedge SCLK) begin
	sr_MRX <= (MISO) | (sr_MRX << 1);
end

always @ (posedge LOAD or posedge clr) begin
	DO <= clr ? 0 : sr_MRX;
end

endmodule
