module MIPS_REGWE_32(input logic [31:0] d,
						 input logic reset, clk,
						 output logic [31:0] q);
						 
	genvar i;
	generate
	for(i = 0; i < 32; i++) begin :REG_GENERATION_LOOP
	
		MIPS_REGWE_1 REGWE_INSTANCE(d[i], reset, clk, q[i]);
		
	end
	endgenerate
	
endmodule	