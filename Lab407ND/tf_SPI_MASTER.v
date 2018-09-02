`timescale 1ns / 1ps

module tf_SPI_MASTER;

	// Inputs
	reg st;
	reg clk;
	reg MISO;
	reg clr;
	reg [14:0] DI;

	// Outputs
	wire LOAD;
	wire SCLK;
	wire MOSI;
	wire ce;
	wire ce_tact;
	wire [7:0] cb_bit;
	wire [14:0] sr_MTX;
	wire [14:0] sr_MRX;
	wire [14:0] DO;

	// Instantiate the Unit Under Test (UUT)
	SPI_MASTER uut (
		.st(st), 
		.LOAD(LOAD), 
		.clk(clk), 
		.SCLK(SCLK), 
		.MISO(MISO), 
		.MOSI(MOSI), 
		.clr(clr), 
		.ce(ce), 
		.DI(DI), 
		.ce_tact(ce_tact), 
		.cb_bit(cb_bit), 
		.sr_MTX(sr_MTX), 
		.sr_MRX(sr_MRX), 
		.DO(DO)
	);

	always begin #10; clk = 1; #10; clk = 0; end

	initial begin
		// Initialize Inputs
		st = 0;
		MISO = 1;
		clr = 0;
		DI = 15'b111110000110011;

		// Wait 100 ns for global reset to finish
		#100;
      st = 1;
		#20;
		st = 0;
		
		#60000;
		MISO = 0;
		st = 1;
		#20;
		st = 0;
		// Add stimulus here

	end
      
endmodule

