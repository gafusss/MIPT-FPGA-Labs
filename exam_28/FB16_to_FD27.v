`timescale 1ns / 1ps


module FB16_to_FD27 ( 						output wire [26:0] FDO,
							input [15:0] FBI, output reg[4:0]cb_tact=0,
							input clk, 			output reg EN_conv=0,
							input st, 			output wire ok_conv);

parameter Dmax=27'h2FAF080 ; //50000000 , 99999999=27'h5f5e0ff

reg [15:0] sr_FBI =0 ;
reg [31:0]sr_FBO =0 ;
reg [31:0]ACC = 0 ;

assign FDO = ACC[31:5] ;
assign ok_conv = (cb_tact==16) ;

always @ (posedge clk) begin
	sr_FBI <= st? FBI : EN_conv? sr_FBI<<1 : sr_FBI ;
	sr_FBO <= st? {Dmax,5'b00000} : EN_conv? sr_FBO>>1 : sr_FBO ;
	ACC <= st? 0 : (EN_conv & sr_FBI[15])? ACC + sr_FBO : ACC ;
	cb_tact <= st? 0 : EN_conv? cb_tact+1 : cb_tact ;
	EN_conv <= st? 1 : ok_conv? 0 : EN_conv ;
end

endmodule
