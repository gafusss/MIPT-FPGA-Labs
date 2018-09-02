`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:35:49 10/13/2016
// Design Name:   DIV_AB_QF
// Module Name:   D:/Other/Agafonov/Lab403DN/tf_DIV_AB_QF.v
// Project Name:  Lab403DN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DIV_AB_QF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_DIV_AB_QF;

	// Inputs
	reg clk;
	reg [21:0] A;
	reg [4:0] B;
	reg st;

	// Outputs
	wire [21:0] Q;
	wire [4:0] F;
	wire ok_div;
	wire [26:0] bf_A;
	wire [30:0] bf_B;

	// Instantiate the Unit Under Test (UUT)
	DIV_AB_QF uut (
		.clk(clk), 
		.A(A), 
		.B(B), 
		.st(st), 
		.Q(Q), 
		.F(F), 
		.ok_div(ok_div), 
		.bf_A(bf_A), 
		.bf_B(bf_B)
	);


parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		st = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 1;
		st = 1;
		#40
		st = 0;
		  
		// Add stimulus here

	end
      
endmodule

