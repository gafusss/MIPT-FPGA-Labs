`timescale 1ns / 1ps



module HEX_to_DEC(input [7:0] HI, 	output reg[15:0] DO=0,
						input clk, 			output wire ok_conv,
						input ce,		 	output reg[1:0]ptr_dig=0,
						input st, 			output reg en_conv=0 );
assign ok_conv = (ptr_dig==0) & en_conv ;
wire[3:0]D3dec=0; reg[2:0]D2dec=0; reg[3:0]D1dec=0; reg[3:0]D0dec=0;
reg q=0 ;
reg [8:0]rest; //�������
wire d3 = (ptr_dig==3);
wire d2 = (ptr_dig==2);
wire d1 = (ptr_dig==1);
wire[7:0]Nd = 	d3? 100 :
					d2? 10 :
					d1? 1 : 0 ;
wire [8:0]dx = rest-Nd ; //�������� ����� �������� � di (i=2,1,0)
wire z = dx[8] ; // ���� ��������
wire en_inc_dig = en_conv & q & !z ; //���������� ���������� �������� �����
wire en_dec_ptr = en_conv & !q & z ; //���������� ���������� ��������� �����

always @ (posedge clk) if (ce) begin
	q <= st? 0 : en_conv? !q : q ; //q - ��� ���������� ������������� �������������� �������
	en_conv <= st? 1 : (ptr_dig==0)? 0 : en_conv ; //���������� ��������������
	rest <= st? HI : en_inc_dig? dx : rest ; //�������
	ptr_dig <= st? 3: en_dec_ptr? ptr_dig-1 : ptr_dig ; //��������� ��������� �������� �����
	D2dec <= st? 0 : (d3 & en_inc_dig)? D2dec+1 : D2dec ;
	D1dec <= st? 0 : (d2 & en_inc_dig)? D1dec+1 : D1dec ;
	D0dec <= st? 0 : (d1 & en_inc_dig)? D0dec+1 : D0dec ;
	DO <= ok_conv? {D3dec,D2dec,D1dec,D0dec} : DO ;
end

endmodule