module meioSomador(input logic in1, in2, output logic out_s0, cout_0);
	
assign out_s0 = in1 ^ in2;
assign cout_0 = in1 & in2;
	
endmodule

module somador(input logic inA, inB, cin, output logic out_s, cout);
	
	logic carry1, carry2, out_s1;
	
	meioSomador u1(inA, inB, out_s1, carry1);
	meioSomador u2(out_s1, cin, out_s, carry2);
	or u3(cout, carry1, carry2); 
	
endmodule


