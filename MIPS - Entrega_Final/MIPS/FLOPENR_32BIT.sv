module MIPS_REG_32(input logic [31:0] d,
						 input logic enable, reset, clk,
						 output logic [31:0] q);
						 
	genvar i;
	generate
	for(i = 0; i < 32; i++) begin :REG_GENERATION_LOOP
	
		MIPS_REG_1 REG_INSTANCE(d[i], enable, reset, clk, q[i]);
		
	end
	endgenerate
	
endmodule	