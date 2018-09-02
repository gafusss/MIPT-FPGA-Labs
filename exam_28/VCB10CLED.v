`timescale 1ns / 1ps


module VCB10CLED(
    input ce,
    input up,
    input [9:0] di,
    input L,
    input clk,
    input clr,
    output reg [9:0] Q = 0,
    output wire CEO,
    output wire TC
    );

assign TC = up?(Q == 999):(Q == 1);
assign CEO = ce & TC;

always @ (posedge clr or posedge clk) begin
	if (clr) Q <= 1;
	else Q <= L ? di :
					(up & ce)? (TC) ? 1 : Q+1 :
						(!up & ce) ? (TC) ? 999 : Q-1 : 
							Q;
end

endmodule
