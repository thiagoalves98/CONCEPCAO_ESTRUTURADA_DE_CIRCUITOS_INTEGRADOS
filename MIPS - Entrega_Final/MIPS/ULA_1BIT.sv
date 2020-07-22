module MIPS_ALU_1(input logic a, b, cin, less, add_sub,
					 input logic[2:0] ctrl,
					 output logic result, cout, set);

	logic	s_temp;
	
	

	MIPS_ALU_1_SUM SUM_INSTANCE(.a(a), .b(b), .cin(cin), .add_sub(add_sub), 
										.s(s_temp), .cout(cout));
	
	MIPS_ALU_1_LOGIC LOGIC_INSTANCE(a, b, s_temp, less, ctrl, result, set);
					 
	
endmodule
		