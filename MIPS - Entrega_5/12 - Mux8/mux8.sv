module mux8(input logic [7:0]d, input logic [2:0]s, output logic y); 

	logic [1:0]y0;
	
	mux4 m4_0(d[3:0], s[1:0], y0[0]);
	mux4 m4_1(d[7:4], s[1:0], y0[1]);
	
	mux2 m2_0(y0[1:0], s[2], y);

endmodule

