`timescale 1ns / 1ps



module BTN_BL( input BTN, output wire st,
					input ce,   //Период сигналаce Tce>=1ms
					input clk);

reg [1:0] Q =0 ;

assign st= Q[0] & !Q[1] & ce ;

always @ (posedge clk) if (ce) begin
	Q <= Q<<1 | BTN ;
end

endmodule
