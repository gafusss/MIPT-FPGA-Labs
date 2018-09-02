`timescale 1ns / 1ps


module tf_DISPL;

	// Inputs
	reg clk;
	reg [7:0] HB;
	reg [7:0] LB;

	// Outputs
	wire [3:0] AN;
	wire [6:0] seg;
	wire seg_P;
	wire ce1ms;

	// Instantiate the Unit Under Test (UUT)
	DISPL uut (
		.clk(clk), 
		.AN(AN), 
		.HB(HB), 
		.seg(seg), 
		.LB(LB), 
		.seg_P(seg_P), 
		.ce1ms(ce1ms)
	);

always begin clk = 1'b0; #10 clk = 1'b1; #10; end // PERIOD = 20

	initial begin
		// Initialize Inputs
		HB = 8'b10000001;
		LB = 8'b01111110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

