module Gen_ADC_clk( input clk, 	output wire M10M,		//10MHz частота
											output wire ce10M); //10 MHz импульс

reg [2:0] cb_10M=0 ;

assign ce10M = (cb_10M==5) ;
assign M10M = !cb_10M[2] ;

always @ (posedge clk) begin
	cb_10M <= ce10M? 1 : cb_10M+1 ;
end

endmodule
