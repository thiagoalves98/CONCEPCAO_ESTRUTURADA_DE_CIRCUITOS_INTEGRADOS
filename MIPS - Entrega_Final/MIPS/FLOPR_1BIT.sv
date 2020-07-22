module MIPS_REGWE_1(input logic d, reset, clk,
						output logic q);
						
						
	always @(posedge clk or posedge reset) begin
		if(reset == 1) begin
			q <= 0;
		end
		else begin
			q <= d;
		end
	end
endmodule

		
