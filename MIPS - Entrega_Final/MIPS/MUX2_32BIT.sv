module MIPS_MUX2_32(input logic [31:0] a, b,
						  input logic sel,
						  output logic [31:0]s);
	
	assign s = sel ? b : a;
	
endmodule
