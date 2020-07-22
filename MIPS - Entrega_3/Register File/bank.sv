module bank(input logic clk, input logic reset, input logic [0:31][0:0]en, input logic d, output logic [0:31][0:0]q);
 
	flopenr r0 (clk, reset, en[0][0:0] , d, q[0][0:0] );
	flopenr r1 (clk, reset, en[1][0:0] , d, q[1][0:0] );
	flopenr r2 (clk, reset, en[2][0:0] , d, q[2][0:0] );
	flopenr r3 (clk, reset, en[3][0:0] , d, q[3][0:0] );
	flopenr r4 (clk, reset, en[4][0:0] , d, q[4][0:0] );
	flopenr r5 (clk, reset, en[5][0:0] , d, q[5][0:0] );
	flopenr r6 (clk, reset, en[6][0:0] , d, q[6][0:0] );
	flopenr r7 (clk, reset, en[7][0:0] , d, q[7][0:0] );
	flopenr r8 (clk, reset, en[8][0:0] , d, q[8][0:0] );
	flopenr r9 (clk, reset, en[9][0:0] , d, q[9][0:0] );
	flopenr r10(clk, reset, en[10][0:0], d, q[10][0:0]);
	flopenr r11(clk, reset, en[11][0:0], d, q[11][0:0]);
	flopenr r12(clk, reset, en[12][0:0], d, q[12][0:0]);
	flopenr r13(clk, reset, en[13][0:0], d, q[13][0:0]);
	flopenr r14(clk, reset, en[14][0:0], d, q[14][0:0]);
	flopenr r15(clk, reset, en[15][0:0], d, q[15][0:0]);
	flopenr r16(clk, reset, en[16][0:0], d, q[16][0:0]);
	flopenr r17(clk, reset, en[17][0:0], d, q[17][0:0]);
	flopenr r18(clk, reset, en[18][0:0], d, q[18][0:0]);
	flopenr r19(clk, reset, en[19][0:0], d, q[19][0:0]);
	flopenr r20(clk, reset, en[20][0:0], d, q[20][0:0]);
	flopenr r21(clk, reset, en[21][0:0], d, q[21][0:0]);
	flopenr r22(clk, reset, en[22][0:0], d, q[22][0:0]);
	flopenr r23(clk, reset, en[23][0:0], d, q[23][0:0]);
	flopenr r24(clk, reset, en[24][0:0], d, q[24][0:0]);
	flopenr r25(clk, reset, en[25][0:0], d, q[25][0:0]);
	flopenr r26(clk, reset, en[26][0:0], d, q[26][0:0]);
	flopenr r27(clk, reset, en[27][0:0], d, q[27][0:0]);
	flopenr r28(clk, reset, en[28][0:0], d, q[28][0:0]);
	flopenr r29(clk, reset, en[29][0:0], d, q[29][0:0]);
	flopenr r30(clk, reset, en[30][0:0], d, q[30][0:0]);
	flopenr r31(clk, reset, en[31][0:0], d, q[31][0:0]);

endmodule
