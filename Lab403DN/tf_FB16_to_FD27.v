`timescale 1ns / 1ps


module tf_FB16_to_FD27;

	// Inputs
	reg [15:0] FBI;
	reg clk;
	reg st;

	// Outputs
	wire [26:0] FDO;
	wire [4:0] cb_tact;
	wire EN_conv;
	wire ok_conv;

	// Instantiate the Unit Under Test (UUT)
	FB16_to_FD27 uut (
		.FDO(FDO), 
		.FBI(FBI), 
		.cb_tact(cb_tact), 
		.clk(clk), 
		.EN_conv(EN_conv), 
		.st(st), 
		.ok_conv(ok_conv)
	);

parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end

	initial begin
		// Initialize Inputs
		FBI = 0;
		clk = 0;
		st = 0;

		// Wait 100 ns for global reset to finish
		#100;
      FBI = 16'b0100110100111010;
		st = 1;
		#20; st = 0;
		// Add stimulus here

	end
      
endmodule

