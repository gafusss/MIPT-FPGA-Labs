module Test_RX_ATRP_AR_TXA(
input clk, output wire [11:0]TXA,
input [5:0] M, output wire [11:0]D_RXA,
output wire [11:0]Xns,
output wire RXP,
output wire RXN,
output wire [10:0] AMP,
output wire res,
output wire [7:0]N_RXPN,
output wire en_TX,
output wire err);
wire ce_rx ;
//--Генератор сигналов ARINC-429
AR_TXA DD1 (.clk(clk), .TXA(TXA), .M(M), .en_tx(en_TX));
//--Таймер приемного блока------------
RX_TIMER DD2 ( .clk(clk), .ce(ce_rx),
.RXP(RXP), .res(res),
.RXN(RXN), .N_RXPN(N_RXPN),
.err(err));
//--Приемник сигналов ARINC-429
RX_MTRP DD3( .Inp(TXA), .MEM_dat(D_RXA),
.clk(clk), .RXP(RXP),
.ce(ce_rx), .RXN(RXN), .res(res), .Xns(Xns),
.AMP(AMP));
endmodule