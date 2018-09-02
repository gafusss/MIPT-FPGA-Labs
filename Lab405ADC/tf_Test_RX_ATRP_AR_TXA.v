`timescale 1ns / 1ps


module tf_Test_RX_ATRP_AR_TXA;

	// Inputs
	reg clk;
	reg [5:0] M;

	// Outputs
	wire [11:0] TXA;
	wire [11:0] D_RXA;
	wire [11:0] Xns;
	wire RXP;
	wire RXN;
	wire [10:0] AMP;
	wire res;
	wire [7:0] N_RXPN;
	wire en_TX;
	wire err;

	// Instantiate the Unit Under Test (UUT)
	Test_RX_ATRP_AR_TXA uut (
		.clk(clk), 
		.TXA(TXA), 
		.M(M), 
		.D_RXA(D_RXA), 
		.Xns(Xns), 
		.RXP(RXP), 
		.RXN(RXN), 
		.AMP(AMP), 
		.res(res), 
		.N_RXPN(N_RXPN), 
		.en_TX(en_TX), 
		.err(err)
	);
always begin clk=0; #10; clk=1; #10; end
initial begin
M=0;
#10000; M=5; //2016
#3400000; M=6; //1024
#2880000; M=16; //512
#2880000; M=6; //256
#2880000; M=5; //128
#2880000; M=4; //96

	end
      
endmodule

