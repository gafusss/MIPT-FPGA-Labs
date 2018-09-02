`timescale 1ns / 1ps



module Gen_10ms(
    input ce5ms,
    input clk,
    output reg st = 0
    );

reg cb = 0;

always @ (posedge clk) begin
	cb <= (ce5ms) ? cb + 1 : cb;
	st <= (ce5ms & cb) ? 1 : 0;
end

endmodule
