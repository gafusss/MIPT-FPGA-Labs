module Test_RX_MTRP(
input clk, output wire [11:0]MTRP,
input st, output wire [11:0]MEM_dat,
input [5:0] M, output wire [11:0]Xmax,
input S, output wire [11:0]Xns,
input res, output wire [11:0]Xmin, output wire [11:0]REF_P,
output wire [11:0]REF_N,
output wire RXP,
output wire RXN,
output wire [10:0]AMP);
wire ce ;
Gen_MTRP DD2 ( .clk(clk), .MTRP(MTRP),
.st(st), .ce(ce),
.M(M),
.S(S));
RX_MTRP DD3 ( .Inp(MTRP), .MEM_dat(MEM_dat),
.clk(clk), .RXP(RXP),
.ce(ce), .RXN(RXN), .res(res), .Xmax(Xmax),
.Xns(Xns),
.Xmin(Xmin),
.REF_P(REF_P),
.REF_N(REF_N),
.AMP(AMP));
endmodule