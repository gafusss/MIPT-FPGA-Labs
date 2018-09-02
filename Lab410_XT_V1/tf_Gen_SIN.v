`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:20:23 11/03/2016
// Design Name:   Gen_SIN
// Module Name:   D:/Other/Agafonov/Lab410_XT_V1/tf_Gen_SIN.v
// Project Name:  Lab410_XT_V1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_SIN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Gen_SIN;

	// Inputs
	reg clk;
	reg ce;

	// Outputs
	wire S;
	wire [3:0] X;
	wire [7:0] Y;
	wire [8:0] SIN;

	// Instantiate the Unit Under Test (UUT)
	Gen_SIN uut (
		.S(S), 
		.clk(clk), 
		.X(X), 
		.ce(ce), 
		.Y(Y), 
		.SIN(SIN)
	);

parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
parameter Tce = 1000; //Tce=1/Fce=1/1Mhz = 1us = 1000ns
parameter NTce = Tce/Tclk ; //NTce=50
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end
always begin ce=0 ; #(Tclk*(NTce-1)) ce=1; #(Tclk) ; end

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

