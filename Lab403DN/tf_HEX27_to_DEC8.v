`timescale 1ns / 1ps


module tf_HEX27_to_DEC8;

	// Inputs
	reg [26:0] Dbin;
	reg clk;
	reg st;

	// Outputs
	wire [31:0] Ddec;
	wire [3:0] ptr_dig;

	// Instantiate the Unit Under Test (UUT)
	HEX27_to_DEC8 uut (
		.Dbin(Dbin), 
		.Ddec(Ddec), 
		.clk(clk), 
		.ptr_dig(ptr_dig), 
		.st(st)
	);

parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end

	initial begin
		// Initialize Inputs
		Dbin = 27'b001011010101001110101010101;
		st = 0;

		// Wait 100 ns for global reset to finish
		#100;
       st = 1;
		 #20; st = 0;
		// Add stimulus here

	end
      
endmodule

