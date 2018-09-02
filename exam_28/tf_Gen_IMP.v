`timescale 1ns / 1ps




module tf_Gen_IMP;

	// Inputs
	reg [15:0] sqX;
	reg clk;
	reg ce1us;

	// Outputs
	wire imp;

	// Instantiate the Unit Under Test (UUT)
	Gen_IMP uut (
		.sqX(sqX), 
		.clk(clk), 
		.imp(imp), 
		.ce1us(ce1us)
	);

	parameter Tclk = 20;
	always begin #(Tclk/2); clk = 1; #(Tclk/2); clk = 0; end;
	parameter T1us = 1000;
	always begin #(T1us-20); ce1us = 1; #(20); ce1us = 0; end;

	initial begin
		// Initialize Inputs
		sqX = 0;
		clk = 0;
		ce1us = 0;

		// Wait 100 ns for global reset to finish
		#100;
		sqX = 1;
		#3000;
		sqX = 2;
		#3000;
		sqX = 4;
        
		// Add stimulus here

	end
      
endmodule

