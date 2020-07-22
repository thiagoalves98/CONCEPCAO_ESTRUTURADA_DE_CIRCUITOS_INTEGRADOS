module MIPS_MUX4_32(input logic [31:0] a, b, c, d,
						  input logic	sel0, sel1,
						  output logic [31:0] s);
						  
		logic [31:0] high, low;
		
		MIPS_MUX2_32 LOW_INSTANCE(a, b, sel0, low);
		
		MIPS_MUX2_32 HIGH_INSTANCE(c, d, sel0, high);
		
		MIPS_MUX2_32 LAST_INSTANCE(low, high, sel1, s);
		
endmodule
