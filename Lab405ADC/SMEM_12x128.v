module SMEM_12x128(
input clk, output wire [11:0] DO,
input we,
input [11:0] DI,
input [6:0] Adr_wr,
input [6:0] Adr_rd);
reg [11:0]MEM[127:0] ;
assign DO = MEM[Adr_rd] ;
initial//Инициализация модуля памяти из файла SMEM_12x128.txt
$readmemh ("SMEM_12x128.txt", MEM, 0, 127);
always @ (posedge clk) begin
MEM[Adr_wr] <= we? DI : MEM[Adr_wr] ;
end
endmodule