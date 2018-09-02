`timescale 1ns / 1ps


module tf_Sch_test_URXD1B;

	// Inputs
	reg tx_clk;
	reg st;
	reg [7:0] tx_dat;
	reg rx_clk;

	// Outputs
	wire TXD;
	wire [3:0] cb_bit_tx;
	wire en_rx_byte;
	wire [7:0] sr_dat;
	wire [3:0] cb_bit_rx;
	wire ok_rx_byte;
	wire start_rx;
	wire T_start;
	wire T_dat;
	wire T_stop;
	wire ce_tact;
	wire ce_bit;
	wire RXD;

	// Instantiate the Unit Under Test (UUT)
	Sch_test_URXD1B uut (
		.tx_clk(tx_clk), 
		.TXD(TXD), 
		.st(st), 
		.cb_bit_tx(cb_bit_tx), 
		.tx_dat(tx_dat), 
		.en_rx_byte(en_rx_byte), 
		.rx_clk(rx_clk), 
		.sr_dat(sr_dat), 
		.cb_bit_rx(cb_bit_rx), 
		.ok_rx_byte(ok_rx_byte), 
		.start_rx(start_rx), 
		.T_start(T_start), 
		.T_dat(T_dat), 
		.T_stop(T_stop), 
		.ce_tact(ce_tact), 
		.ce_bit(ce_bit), 
		.RXD(RXD)
	);
always begin tx_clk = 1'b0; #10 tx_clk = 1'b1; #10; end // PERIOD = 20
always begin rx_clk = 1'b0; #10 rx_clk = 1'b1; #10; end // PERIOD = 20
//always begin rx_clk = 1'b0; #10.5 rx_clk = 1'b1; #10.5; end // PERIOD = 21
//always begin rx_clk = 1'b0; #9.4 rx_clk = 1'b1; #9.4; end // PERIOD = 18.8

initial begin
	st = 0 ; tx_dat = 0 ;
	#1000; st = 1; tx_dat = 8'b10000001;// my tx_dat (из таблицы 1)
	#20; st = 0; 	tx_dat = 8'b10000001;// my tx_dat (из таблицы 1)
	//#1270;
	//#160;
	//#160;
	//#20;
	//st = 1;
	//#20;
	//st = 0;
end
      
endmodule

