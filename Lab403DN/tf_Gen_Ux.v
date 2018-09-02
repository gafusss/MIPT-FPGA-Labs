`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:03 10/13/2016
// Design Name:   Gen_Ux
// Module Name:   D:/Other/Agafonov/Lab403DN/tf_Gen_Ux.v
// Project Name:  Lab403DN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_Ux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Gen_Ux;

	// Inputs
	reg clk;
	reg up;
	reg BTN;

	// Outputs
	wire ceo;
	wire ce1ms;
	wire Ux;
	wire [15:0] Xf;

	// Instantiate the Unit Under Test (UUT)
	Gen_Ux uut (
		.clk(clk), 
		.ceo(ceo), 
		.up(up), 
		.ce1ms(ce1ms), 
		.BTN(BTN), 
		.Ux(Ux), 
		.Xf(Xf)
	);

parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end

	initial begin
		// Initialize Inputs
		up = 0;
		BTN = 0;

		// Wait 100 ns for global reset to finish
		#100;
		BTN = 1;
		#1000000
		BTN = 0;
        
		// Add stimulus here

	end
      
endmodule

