module mux2_5(input logic [4:0]d1, input logic [4:0]d0, input logic s, output tri [4:0]y);
 
 logic ns;
 
 tristate_5 t0(d0, ns, y);
 tristate_5 t1(d1, s, y);
 inversor_5 inv(s, ns);
 
endmodule

