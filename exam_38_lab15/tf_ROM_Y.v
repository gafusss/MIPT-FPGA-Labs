`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:06 01/13/2017
// Design Name:   ROM_Y
// Module Name:   D:/lab15/tf_ROM_Y.v
// Project Name:  lab15
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ROM_Y
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_ROM_Y;

	// Inputs
	reg [4:0] adr;

	// Outputs
	wire [11:0] DO;

	// Instantiate the Unit Under Test (UUT)
	ROM_Y uut (
		.adr(adr), 
		.DO(DO)
	);

	initial begin
		// Initialize Inputs
		adr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		adr = 1;
		#20;
		adr = 2;
		#20;
		adr = 3;
		#20;
		adr = 4;
		#20;
        
		// Add stimulus here

	end
      
endmodule

