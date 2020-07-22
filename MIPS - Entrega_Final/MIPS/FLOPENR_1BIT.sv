module MIPS_REG_1(input logic d, enable, reset, clk,
						output logic q);
											
	always @(posedge clk or posedge reset) begin
		if(reset == 1) begin
			q <= 0;
		end
		else if(enable == 1) begin
			q <= d;
		end
	end
	
endmodule

		
