`timescale 1ns / 1ps


module tf_VCB4RE;

	// Inputs
	reg ce;
	reg r;
	reg clk;

	// Outputs
	wire TC;
	wire CEO;
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	VCB4RE uut (
		.ce(ce), 
		.r(r), 
		.clk(clk), 
		.TC(TC), 
		.CEO(CEO), 
		.Q(Q)
	);
//�������� �������������� ������� ������������� clk
parameter Tclk=20; //������ ������� ������������� 20 ��
always begin clk=1; #(Tclk/2); clk=0; #(Tclk/2); end
// ��������� �������������� ������� ce
parameter Tce=160; //������ ������� ce 80 ��
always begin ce=0; #(7*Tce/8); ce=1; #(1*Tce/8); end //������ ����� ����� �������

	initial begin
		// Initialize Inputs
		ce = 0;
		r = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
			
	r = 0; //�������� ��������� ������
	#380; r = 1; //����� 38 �� 1
	#10; r = 0; // ����� 10 �� 0
	#611; r = 1; //����� 611 �� 1
	#270; r = 0; // ����� 270 �� 0
		// Add stimulus here

	end
      
endmodule

