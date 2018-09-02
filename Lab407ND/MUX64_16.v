`timescale 1ns / 1ps

module MUX64_16(	input [15:0] A, output wire [15:0] DO,
						input [15:0] B,
						input [15:0] C,
						input [15:0] D,
						input [1:0] S
    );

assign DO = (S == 0)? A:
				(S == 1)? B:
				(S == 2)? C:
							 D;

endmodule
