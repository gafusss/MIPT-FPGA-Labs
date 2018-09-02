`timescale 1ns / 1ps

module tf_Sch_test_SLAVE;

	// Inputs
	reg st;
	reg clk;
	reg [14:0] MTX_DAT;
	reg RESET;
	reg [14:0] STX_DAT;

	// Outputs
	wire LOAD;
	wire SCLK;
	wire MOSI;
	wire [14:0] MRX_DAT;
	wire [14:0] sr_MTX;
	wire [14:0] sr_MRX;
	wire [7:0] cb_bit;
	wire ce_tact;
	wire MISO;
	wire [14:0] sr_STX;
	wire [14:0] sr_SRX;
	wire [14:0] SRX_DAT;

	// Instantiate the Unit Under Test (UUT)
	Sch_test_SLAVE uut (
		.st(st), 
		.LOAD(LOAD), 
		.clk(clk), 
		.SCLK(SCLK), 
		.MTX_DAT(MTX_DAT), 
		.MOSI(MOSI), 
		.RESET(RESET), 
		.MRX_DAT(MRX_DAT), 
		.sr_MTX(sr_MTX), 
		.sr_MRX(sr_MRX), 
		.cb_bit(cb_bit), 
		.ce_tact(ce_tact), 
		.STX_DAT(STX_DAT), 
		.MISO(MISO), 
		.sr_STX(sr_STX), 
		.sr_SRX(sr_SRX), 
		.SRX_DAT(SRX_DAT)
	);

	always begin #10; clk = 1; #10; clk = 0; end
	initial begin
		// Initialize Inputs
		st = 0;
		MTX_DAT = 15'b111110000110011;
		RESET = 0;
		STX_DAT = 15'b101011010101010;

		// Wait 100 ns for global reset to finish
		#100;
      st = 1;
		#20;
		st = 0;
		// Add stimulus here

	end
      
endmodule

