module MIPS_SHIFT2PC_32(input logic [3:0]InPC,
								input logic [25:0]In,  
								output logic [31:0] Out);
	
	assign Out = { InPC, In, 2'b00};

endmodule
