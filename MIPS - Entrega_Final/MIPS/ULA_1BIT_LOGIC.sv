module MIPS_ALU_1_LOGIC (input logic a, b, s_temp, less,
								input logic[2:0] ctrl,
								output logic result, set);
	assign set = s_temp;
		
	always_comb begin
		case (ctrl)
			3'b000: result = a & b;
			3'b001: result = a | b;
			3'b100: result = a ^ b;
			3'b101: result = ~(a | b);
			3'b010: result = s_temp;
			3'b110: result = s_temp;
			3'b111: result = less;
			default: result = 0;
			
		endcase
	end
endmodule