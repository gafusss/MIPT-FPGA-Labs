`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:04:42 11/03/2016
// Design Name:   Test_MES_AMP_SIN
// Module Name:   D:/Other/Agafonov/Lab410_XT_V1/tf_Test_MES_AMP_SIN.v
// Project Name:  Lab410_XT_V1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Test_MES_AMP_SIN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`include "CONST.v"
module tf_Test_MES_AMP_SIN;

	// Inputs
	reg clk;
	reg ce;
	reg [7:0] NT;
	reg [8:0] NS;
	reg we;

	// Outputs
	wire S;
	wire ce_tact;
	wire [8:0] SIN;
	wire ce_S1;
	wire ce_S2;
	wire [8:0] S1;
	wire [8:0] S2;
	wire [7:0] mod_S1;
	wire [7:0] mod_S2;
	wire ok_SQ;
	wire [15:0] AMP_QV;
	wire [7:0] AMP_SIN;

	// Instantiate the Unit Under Test (UUT)
	Test_MES_AMP_SIN uut (
		.S(S), 
		.clk(clk), 
		.ce_tact(ce_tact), 
		.ce(ce), 
		.SIN(SIN), 
		.NT(NT), 
		.ce_S1(ce_S1), 
		.NS(NS), 
		.ce_S2(ce_S2), 
		.we(we), 
		.S1(S1), 
		.S2(S2), 
		.mod_S1(mod_S1), 
		.mod_S2(mod_S2), 
		.ok_SQ(ok_SQ), 
		.AMP_QV(AMP_QV), 
		.AMP_SIN(AMP_SIN)
	);

parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
parameter Tce = 1000; //Tce=1/Fce=1/1Mhz = 1us = 1000ns
parameter NTce = Tce/Tclk ; //NTce=50
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end
always begin ce=0 ; #(Tclk*(NTce-1)) ce=1; #(Tclk) ; end

	initial begin
		// Initialize Inputs
		//NT = `NP; // NA ~= 99
		NT = `NP - 4; // NA ~= 103/104
		//NT = `NP + 4; // NA ~= 105/101/97/94
		NS = 0;
		we = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule


