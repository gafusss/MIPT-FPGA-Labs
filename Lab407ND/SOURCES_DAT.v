`timescale 1ns / 1ps

module SOURCES_DAT(
    output reg [14:0] MASTER_dat = 15'b111110000110011,
	 output wire [15:0] MASTER_dat_disp,
	 output wire [15:0] SLAVE_dat_disp,
    output reg [14:0] SLAVE_dat = 15'b101011010101010
    );

assign MASTER_dat_disp = {1'b0, MASTER_dat};
assign SLAVE_dat_disp = {1'b0, SLAVE_dat};

endmodule
