`define Fclk 50000000 //50 MHz
//`define BR 12500 //BAUDRATE - �������� 12,5 kBOD
`define BR 50000 //BAUDRATE - �������� 500 kBOD
//`define BR 100000 //BAUDRATE - �������� 100 kBOD
`define NBR `Fclk/`BR //50000000/50000=1000
`define NP 100 //����� ����� �� Tbit
`define NRF 15 //����� ����� ������/�����
`define Nbit 32 //����� ��� � �����
`define Npaus 4 //������������ ����������� ����� Tpaus=Tbit*Npaus
`define NS0 2048 //�������� ���� (������������� ������ 12'h800)
`define Azer 160 //����������� ��������� ��������
`define my_DAT 31'h10000007 //��� ������

//8 �������