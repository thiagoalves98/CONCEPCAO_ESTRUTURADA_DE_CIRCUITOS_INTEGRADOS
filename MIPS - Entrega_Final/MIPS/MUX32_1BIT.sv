module MIPS_MUX32_1(input logic [31:0] In, 
							input logic [4:0] Sel,
							output logic Out);
							

	assign Out = In[Sel];
	
endmodule
