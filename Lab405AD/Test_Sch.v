module Test_Sch( 							//������ �����������
						input clk, 			output wire ce_tx, // �������� (Tceo=1/Vel)
						input [1:0]Nvel, 	output wire TXD1, //�������� ������ 1
						input [7:0]ADR, 	output wire TXD0, //�������� ������ 0
						input [22:0]DAT, 	output wire SLP, // �������� �������
						input st, 			output wire en_tx_dat, // �������� �������� ������
												output wire T_cp_tx, // ���� ����� �����
												output wire FT_tx, // ������� �������� ��������
												output wire SDAT, // ���������������� ������
												output wire QM, // ���������
												output wire [5:0]cb_bit, //������� ���
												output wire en_tx_word, //�������� �������� �����
												//������ ���������
												output wire[22:0] sr_dat_rx, //������� ������ ������
												output wire[ 7:0] sr_adr_rx, //������� ������ ������
												output wire ok_rx); //�������� �����

// ������ �����������
AR_TXD DD1 (
				.clk(clk), 		.ce_tact(ce_tx), // �������� (Tceo=1/Vel)
				.Nvel(Nvel), 	.TXD1(TXD1), //�������� ������ 1
				.ADR(ADR), 		.TXD0(TXD0), //�������� ������ 0
				.DAT(DAT), 		.SLP(SLP), // �������� �������
				.st(st), 		.en_tx (en_tx_dat), // �������� �������� ������
									.T_cp(T_cp_tx), // ���� ����� �����
									.FT_cp(FT_tx), // ������� �������� ��������
									.SDAT(SDAT), // ���������������� ������
									.QM(QM), // ���������
									.cb_bit(cb_bit), //������� ���
									.en_tx_word(en_tx_word)); //�������� �������� �����

// ������ ���������
AR_RXD DD2 (.Inp0(TXD0), 	.sr_dat(sr_dat_rx),
				.Inp1(TXD1), 	.sr_adr(sr_adr_rx),
				.clk(clk), 		.ce_wr(ok_rx));

endmodule
