`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:15:38 10/13/2016
// Design Name:   Gen_TM
// Module Name:   D:/Other/Agafonov/Lab403DN/tf_Gen_TM.v
// Project Name:  Lab403DN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_TM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Gen_TM;


	// Inputs
	reg clk;
	reg st;
	reg ce;

	// Outputs
	wire Tm;

	// Instantiate the Unit Under Test (UUT)
	Gen_TM uut (
		.clk(clk), 
		.st(st), 
		.ce(ce), 
		.Tm(Tm)
	);
	
parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
parameter Tce = 10000; //Tce=1/Fce
parameter NTce = Tce/Tclk ; //NTce=5000
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end
always begin ce=0 ; #(Tclk*(NTce-1)) ce=1; #(Tclk) ; end


	initial begin
		// Initialize Inputs
		clk = 0;
		st = 0;
		ce = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		ce = 1;
		#1000; st = 1;
		#20; st = 0;
		#100 ce = 0;
		#100 ce = 1;

	end
      
endmodule

