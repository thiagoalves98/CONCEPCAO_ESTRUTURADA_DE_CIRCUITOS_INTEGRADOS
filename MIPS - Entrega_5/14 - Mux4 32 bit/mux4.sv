module mux4(input logic [31:0]d3, input logic[31:0]d2, input logic[31:0]d1, 
				input logic[31:0]d0, input logic [1:0]s, output logic [31:0]y); 

	logic [31:0]a0;
	logic	[31:0]a1;
	
	mux2 m0(d1, d0, s[0], a0);
	mux2 m1(d3, d2, s[0], a1);
	mux2 m2(a1, a0, s[1], y);

endmodule



