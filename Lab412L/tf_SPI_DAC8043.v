`timescale 1ns / 1ps


module tf_SPI_DAC8043;

	// Inputs
	reg st;
	reg clk;
	reg [11:0] DI;

	// Outputs
	wire SDAT;
	wire SCLK;
	wire NLD;
	wire ce;
	wire [3:0] cb_bit;

	// Instantiate the Unit Under Test (UUT)
	SPI_DAC8043 uut (
		.SDAT(SDAT), 
		.st(st), 
		.SCLK(SCLK), 
		.clk(clk), 
		.DI(DI), 
		.NLD(NLD), 
		.ce(ce), 
		.cb_bit(cb_bit)
	);


parameter Tclk = 20;
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end

	initial begin
		// Initialize Inputs
		st = 0;
		clk = 0;
		DI = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		DI = 12'b100011000111;
		#20;
		st = 1;
		#20;
		st = 0;
		#2870;
		//st = 1;
		#20;
		st = 0;
		// Add stimulus here

	end
      
endmodule

