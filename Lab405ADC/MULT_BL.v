module MULT_BL (
input [10:0] X_AMP, output wire [11:0] U_AMP,
input [11:0] X_SH, output wire [11:0] U_SH);
wire [23:0]M_AMP=X_AMP*5000 ;
wire [23:0]M_SH=X_SH*5000 ;
assign U_AMP = M_AMP/4096 ; //U_AMP=X_AMP*5000/4096
assign U_SH = M_SH/4096 ; //U_SH=X_SH*5000/4096
endmodule