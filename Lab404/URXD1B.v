module URXD1B( input clk, 	output wire RXD, //�����
									output wire ce_tact, //����� �����
					input Inp, 		//output reg en_tx =0, //�������� �������� �����
									output reg [3:0] cb_bit=10,
									output wire T_start, //����� ����
									output wire T_dat, //�������� ������
									output wire T_stop, //���� ����
										//output wire ce_stop, //����� �����
									output reg en_rx_byte = 0,
									output wire ok_rx_byte,
									output wire start,
									output wire ce_bit,
									output reg [7:0] sr_dat=0 );//������� ������ ������

parameter Fclk=50000000 ; //50 MHz
parameter VEL = 19200; //115200 ; //115.2 kBod (�� ������� 1 ���������)
parameter Nt = Fclk/VEL ; //~434

reg [15:0]cb_tact=0 ; //������� �����

assign ce_tact = (cb_tact==Nt) ; //���������� cb_tact � Nt //
assign T_start = (cb_bit == 0); //((cb_bit==0) & en_tx) ; // ���������� ����� �����
assign T_dat = (cb_bit<9) & (cb_bit>0); // ���������� ��������� ������ //
assign T_stop = (cb_bit == 9 & en_rx_byte); //((cb_bit==9) & en_tx); // ���������� ���� �����

//assign TXD = T_start? 0 : T_dat? sr_dat[0] : 1 ; //���������������� ������ sr_dat[0]
assign RXD = Inp;

assign ce_bit = (cb_tact == Nt/2);//
assign ok_rx_byte = T_stop & ce_bit & RXD;//

reg t_RXD;
wire dRXD = t_RXD & !RXD;
assign start = dRXD & !en_rx_byte ; //

//-------------
always @ (posedge clk) begin
	t_RXD <= RXD;

	cb_tact <= (start | ce_tact)? 1 : cb_tact+1 ; //"�����" � 1 ��� cb_tact==`Nt
	en_rx_byte <= (T_start & ce_bit)? 1 : (ok_rx_byte)? 0 : en_rx_byte;//st? 1 : ce_stop? 0 : en_tx;
	cb_bit <= start? 0 : (ce_tact & en_rx_byte)? cb_bit+1 : cb_bit ;
	
	
	sr_dat <= (T_dat & ce_bit)? (RXD << 7)|(sr_dat >> 1) : sr_dat; //(T_start & ce_tact)? dat : (T_dat & ce_tact)? sr_dat>>1 : sr_dat ; /* ����� sr_dat �������� ������ ������*/
end

endmodule
