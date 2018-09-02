`timescale 1ns / 1ps
module Gen_st(
    input clk,	output wire ce_st
    );

//Trep = 800us = 800000ns
parameter Nt = 800000/20; //40000

reg [15:0] cb = 0;

assign ce_st = (cb == (Nt - 1));

always @(posedge clk) begin
	cb <= ce_st ? 0 : cb + 1;
end

endmodule
