`timescale 1ns / 1ps


module Gen_us(
    input clk,
    output wire st
    );

reg [5:0]cb_st = 0;

assign st = (cb_st == (50 - 1)); // T1us/Tclk = 1000 / 20 = 50

always @(posedge clk) begin
	cb_st <= st? 0 : cb_st + 1;
end

endmodule

