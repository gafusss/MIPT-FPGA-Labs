`timescale 1ns / 1ps



module MUX8_2( input [7:0] A, output wire [7:0] C,
					input [7:0] B,
					input S);
assign C = S? B : A ;
endmodule