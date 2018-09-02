`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:48 01/13/2017
// Design Name:   Gen_SIN
// Module Name:   D:/lab15/lab15/tf_Gen_SIN.v
// Project Name:  lab15
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
	reg [3:0] dSsin;

	// Outputs
	wire S;
	wire [4:0] X;
	wire [11:0] Y;
	wire [11:0] SIN;
	wire [11:0] SIN_L;

	// Instantiate the Unit Under Test (UUT)
	Gen_SIN uut (
		.clk(clk), 
		.S(S), 
		.ce(ce), 
		.X(X), 
		.dSsin(dSsin), 
		.Y(Y), 
		.SIN(SIN), 
		.SIN_L(SIN_L)
	);
	parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
	always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end
	parameter Tce = 1000000/80; //1ms = 1kHz
	always begin ce = 0; #(Tce - Tclk) ce =1; #(Tclk); end
	
	initial begin
		// Initialize Inputs
		dSsin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

