module mux4(input logic [3:0]d, input logic [1:0]s, output logic y); 

	logic [1:0]a;
	
	mux2 m0(d[1:0], s[0], a[0]);
	mux2 m1(d[3:2], s[0], a[1]);
	mux2 m2(a[1:0], s[1], y);

endmodule

