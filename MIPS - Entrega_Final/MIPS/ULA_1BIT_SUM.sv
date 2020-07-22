module MIPS_ALU_1_SUM(input logic a, b, cin, add_sub,
							 output logic  s, cout);
	
	logic blinha;
	assign blinha = b ^ add_sub;

	assign {cout, s} = a + blinha + cin;
	
endmodule
