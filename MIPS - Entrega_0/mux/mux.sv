module mux(input logic [3:0] d0, d1,
 input logic s,
 output logic ns,
 output tri [3:0] y);
 
 tristate t0(d0, ns, y);
 tristate t1(d1, s, y);
 inv inversor(s, ns);
 
endmodule
