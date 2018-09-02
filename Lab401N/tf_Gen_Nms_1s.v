`timescale 1ns / 1ps


module tf_Gen_Nms_1s;

	// Inputs
	reg clk;
	reg ce;
	reg Tmod;

	// Outputs
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	Gen_Nms_1s uut (
		.clk(clk), 
		.ce(ce), 
		.Tmod(Tmod), 
		.CEO(CEO)
	);

//�������� �������������� ������� ������������� clk
parameter Tclk=20; //������ ������� ������������� 20 ��
always begin clk=0; #(Tclk/2); clk=1; #(Tclk/2); end

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
		Tmod = 0;

		// Wait 100 ns for global reset to finish
		#100;
        ce = 1;
		// Add stimulus here

	end
      
endmodule

