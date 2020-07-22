module mux8(input logic [31:0]d7, input logic [31:0]d6, input logic [31:0]d5, input logic [31:0]d4, input logic [31:0]d3,
				input logic [31:0]d2, input logic [31:0]d1, input logic [31:0]d0, input logic [2:0]s  , output logic [31:0]y); 

	logic [31:0]y0;
	logic [31:0]y1;
	
	mux4 m4_0(d3, d2, d1, d0, s[1:0], y0);
	mux4 m4_1(d7, d6, d5, d4, s[1:0], y1);
	
	mux2 m2_0(y1, y0, s[2], y);

endmodule

