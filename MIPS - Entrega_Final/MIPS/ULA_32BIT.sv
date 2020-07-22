module MIPS_ALU_32(input logic [31:0] a, b,
						 input logic [2:0] ctrl,
						 output logic [31:0] result,
						 output logic zero,
						 output logic ovf);
		
		logic add_sub;
		logic [31:0] cout;
		logic	[30:0] zerotest;
		logic less;
		
		assign add_sub = (ctrl == 3'b111 | ctrl == 3'b110) ? 1'b1 : 1'b0;
			 
		MIPS_ALU_1 FIRST_INSTANCE(a[0], b[0], add_sub, less, add_sub, ctrl,  result[0], cout[0]);

		or(zerotest[0], result[0] , result [1]);
											
		genvar i;
		
		generate 
			for(i = 1; i < 31; i = i + 1) begin : generate_1bitalu_instances
				MIPS_ALU_1 INSTANCE(a[i], b[i], cout[i - 1], 1'b0, add_sub, ctrl, result[i], cout[i], );
				or(zerotest[i], zerotest[i-1], result[i+1]);
			end
		endgenerate
		
		not(zero, zerotest[30]);
		
		MIPS_ALU_1 LAST_INSTANCE(a[31], b[31], cout[30], 1'b0, add_sub, ctrl, result[31], cout[31], less);
		
		xor(ovf, cout[30], cout[31]);
		
		
		//TODO: zero flag
endmodule
											