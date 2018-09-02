`timescale 1ns / 1ps


module DEC4_to_BIN16 (input [15:0] DEC, output wire [15:0] BIN);
assign BIN= 1000*DEC[15:12] +
				100*DEC[11:8] +
				10* DEC[7:4] +
				1* DEC[3:0] ;
endmodule
