module mux2(input logic [31:0]d1, input logic [31:0]d0, input logic s, output tri [31:0]y);
 
 logic ns;
 
 tristate t0(d0, ns, y);
 tristate t1(d1, s, y);
 inversor inv(s, ns);
 
endmodule


