`timescale 1ns / 1ps


module CRC_BL( input ce, output reg [15:0] crc,
					input clk,
					input st,
					input in);

wire xbit = crc[0] ^ in ;

always @ (posedge clk) begin
	crc<= st? 16'hffff : (xbit & ce)? (((crc^16'h4002)>>1) | 1<<15): ce? (crc>>1) : crc ;
end

endmodule
