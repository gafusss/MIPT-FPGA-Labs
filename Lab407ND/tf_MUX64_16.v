`timescale 1ns / 1ps


module tf_MUX64_16;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [1:0] S;

	// Outputs
	wire [15:0] DO;

	// Instantiate the Unit Under Test (UUT)
	MUX64_16 uut (
		.A(A), 
		.DO(DO), 
		.B(B), 
		.C(C), 
		.D(D), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 2;
		C = 3;
		D = 4;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
		S = 0;
		#20;
		S = 1;
		#20;
		S = 2;
		#20;
		S = 3;
        
		// Add stimulus here

	end
      
endmodule

