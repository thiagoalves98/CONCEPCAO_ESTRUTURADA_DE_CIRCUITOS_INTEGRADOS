module mux2(input logic [1:0]d, input logic s, output tri y);
 
 logic ns;
 
 tristate t0(d[0], ns, y);
 tristate t1(d[1], s, y);
 inversor inv(s, ns);
 
endmodule

