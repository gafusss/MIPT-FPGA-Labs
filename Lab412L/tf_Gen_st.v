`timescale 1ns / 1ps


module tf_Gen_st;

	// Inputs
	reg clk;

	// Outputs
	wire st;

	// Instantiate the Unit Under Test (UUT)
	Gen_st uut (
		.clk(clk), 
		.st(st)
	);
	
	
parameter Tclk = 20;
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

