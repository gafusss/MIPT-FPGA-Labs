`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:35 10/13/2016
// Design Name:   Fmes_PR_WF
// Module Name:   D:/Other/Agafonov/Lab403DN/tf_Fmes_PR_WF.v
// Project Name:  Lab403DN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fmes_PR_WF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Fmes_PR_WF;

	// Inputs
	reg ce;
	reg Ux;
	reg clk;
	reg st;

	// Outputs
	wire [32:0] Q;
	wire [15:0] F;
	wire Tm;
	wire [15:0] X;
	wire [15:0] Y;
	wire ce_end;
	wire Q_Tm;
	wire ok_DIV;

	// Instantiate the Unit Under Test (UUT)
	Fmes_PR_WF uut (
		.ce(ce), 
		.Ux(Ux), 
		.clk(clk), 
		.st(st), 
		.Q(Q), 
		.F(F), 
		.Tm(Tm), 
		.X(X), 
		.Y(Y), 
		.ce_end(ce_end), 
		.Q_Tm(Q_Tm), 
		.ok_DIV(ok_DIV)
	);

parameter Tx = 20408163; //Tx=1/Fx=1/3.438 kHz=290.866us=290866ns
parameter Tclk = 20; //Tclk=1/Fclk=1/50 mHz = 20 ns
parameter Tce = 10000; //Tce=1/Fce = 1/100000=10000 ns
parameter NTce = Tce/Tclk ; //NTce=5000
//always begin Ux=0 ; #(Tx/2) Ux=1; #(Tx/2) ; end //"Прямой" сигнал
always begin Ux=1 ; #(Tx/2) Ux=0; #(Tx/2) ; end //Инверсный сигнал
always begin clk=0 ; #(Tclk/2) clk=1; #(Tclk/2) ; end
always begin ce=0 ; #(Tclk*(NTce-1)) ce=1; #(Tclk) ; end


	initial begin
		// Initialize Inputs
		st = 0;

		// Wait 100 ns for global reset to finish
		#20000000;
st = 1;
#20; st = 0;
#30000000
st = 1;
#20; st = 0;
        
		// Add stimulus here

	end
      
endmodule

