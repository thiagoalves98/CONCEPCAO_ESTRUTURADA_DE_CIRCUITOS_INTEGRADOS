module MIPS_SIGEXT_32(input logic [15:0] In, output logic [31:0] Out);
	
	assign Out = { { 16{ In[15] } }, In};
	
endmodule

