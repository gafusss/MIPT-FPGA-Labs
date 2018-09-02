`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:45:58 09/22/2016
// Design Name:   VCB4SED
// Module Name:   D:/Other/Agafonov/Lab401N/tf_VCB4SED.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCB4SED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_VCB4SED;

	// Inputs
	reg ce;
	reg clk;
	reg s;

	// Outputs
	wire [3:0] Q;
	wire TC;
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	VCB4SED uut (
		.ce(ce), 
		.clk(clk), 
		.s(s), 
		.Q(Q), 
		.TC(TC), 
		.CEO(CEO)
	);
	//Генратор периодичеккого сигнала синхронизации clk
	parameter Tclk=20; //Период сигнала синхронизации 20 нс
	always begin clk=0; #(Tclk/2); clk=1; #(Tclk/2); end
	initial begin
		// Initialize Inputs
		ce = 0;
		clk = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
		ce = 0;
		s = 0;
		clk = 0;
		#5; ce = 1;
	#75; ce = 0;
	#20; ce = 1;
	
	#35; s = 1;
	#25; s = 0;
	end
      
endmodule

