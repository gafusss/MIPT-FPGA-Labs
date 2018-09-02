`timescale 1ns / 1ps


module tf_Test_RX_MTR;

	// Inputs
	reg clk;
	reg st;
	reg [5:0] M;
	reg S;
	reg res;

	// Outputs
	wire [11:0] MTRP;
	wire [11:0] MEM_dat;
	wire [11:0] Xmax;
	wire [11:0] Xns;
	wire [11:0] Xmin;
	wire [11:0] REF_P;
	wire [11:0] REF_N;
	wire RXP;
	wire RXN;
	wire [10:0] AMP;

	// Instantiate the Unit Under Test (UUT)
	Test_RX_MTRP uut (
		.clk(clk), 
		.MTRP(MTRP), 
		.st(st), 
		.MEM_dat(MEM_dat), 
		.M(M), 
		.Xmax(Xmax), 
		.S(S), 
		.Xns(Xns), 
		.res(res), 
		.Xmin(Xmin), 
		.REF_P(REF_P), 
		.REF_N(REF_N), 
		.RXP(RXP), 
		.RXN(RXN), 
		.AMP(AMP)
	);
always begin clk=0; #10; clk=1; #10; end
initial begin
st = 0; M = 0; S = 0; res = 0;
#3000; st = 1; M = 6; S = 1; res = 0;
#20; st = 0; res = 0;
#80000; st = 1; M = 6; S = 0; res = 0;
#20; st = 0; res = 0;
#100000; st = 1; M = 5; S = 1; res = 1;
#20; st = 0; res = 0;
#80000; st = 1; M = 5; S = 0; res = 0;
#20; st = 0; res = 0;
#80000; st = 0; M = 8; S = 1; res = 1;
#20; st = 0; res = 0;
end
      
endmodule

