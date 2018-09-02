`timescale 1ns / 1ps

module SPI_SLAVE(	input [14:0] DI,	output reg [14:0] DO = 0,
						input SCLK,			output reg [14:0] sr_STX = 0,
						input MOSI,			output reg [14:0] sr_SRX = 0,
						input LOAD,			output wire MISO,
						input clr
    );

assign MISO = sr_STX[14];

always @ (posedge SCLK) begin
	sr_SRX <= (MOSI) | (sr_SRX << 1);
end

always @ (posedge LOAD or posedge clr) begin
	DO <= clr ? 0 : sr_SRX;
end

always @ (posedge LOAD or negedge SCLK) begin
	sr_STX <= LOAD ? DI : sr_STX << 1;
end

endmodule
