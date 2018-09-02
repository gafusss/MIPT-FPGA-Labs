`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:34:45 11/03/2016
// Design Name:   SQRT_BL
// Module Name:   D:/Other/Agafonov/Lab410_XT_V1/tf_SQRT_BL.v
// Project Name:  Lab410_XT_V1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SQRT_BL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_SQRT_BL;

	// Inputs
	reg [15:0] Q;
	reg st;
	reg clk;
	reg ce;

	// Outputs
	wire [7:0] SQ;
	wire ok_SQ;

	// Instantiate the Unit Under Test (UUT)
	SQRT_BL uut (
		.Q(Q), 
		.SQ(SQ), 
		.st(st), 
		.ok_SQ(ok_SQ), 
		.clk(clk), 
		.ce(ce)
	);


parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
parameter Tce = 1000; //Tce=1/Fce=1/1Mhz = 1us = 1000ns
parameter NTce = Tce/Tclk ; //NTce=50
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end
always begin ce=0 ; #(Tclk*(NTce-1)) ce=1; #(Tclk) ; end

	initial begin
		// Initialize Inputs
		Q = 123;
		st = 0;

		// Wait 100 ns for global reset to finish
		#100;
       st = 1;
		 ce = 1;
		 #20
		 ce = 0;
		 st = 0;
		// Add stimulus here

	end
      
endmodule

