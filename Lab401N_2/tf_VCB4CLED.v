`timescale 1ns / 1ps


module tf_VCB4CLED;

	// Inputs
	reg ce;
	reg up;
	reg [3:0] di;
	reg L;
	reg clk;
	reg clr;

	// Outputs
	wire [3:0] Q;
	wire CEO;
	wire TC;

	// Instantiate the Unit Under Test (UUT)
	VCB4CLED uut (
		.ce(ce), 
		.up(up), 
		.di(di), 
		.L(L), 
		.clk(clk), 
		.clr(clr), 
		.Q(Q), 
		.CEO(CEO), 
		.TC(TC)
	);

//�������� �������������� ������� ������������� clk
parameter Tclk=20; //������ ������� ������������� 20 ��
always begin clk=0; #(Tclk/2); clk=1; #(Tclk/2); end

	initial begin
		// Initialize Inputs
		ce = 0;
		up = 1;
		di = 14;
		L = 0;
		clk = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
      ce = 1;
		#65;clr = 1;
		#5; clr = 0;
		#40; L = 1;
		#20; L = 0;
		#5; ce = 0;
		#10; ce = 1;
		#85; up = 0;
		#45; ce = 0;
		#10; ce = 1;
		#65; clr = 1;
		#10; clr = 0;
		// Add stimulus here

	end
      
endmodule

