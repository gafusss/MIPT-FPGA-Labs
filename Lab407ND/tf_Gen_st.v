`timescale 1ns / 1ps


module tf_Gen_st;

	// Inputs
	reg clk;

	// Outputs
	wire ce_st;

	// Instantiate the Unit Under Test (UUT)
	Gen_st uut (
		.clk(clk), 
		.ce_st(ce_st)
	);
	
	always begin #10; clk = 0; #10; clk = 1; end
      
endmodule

