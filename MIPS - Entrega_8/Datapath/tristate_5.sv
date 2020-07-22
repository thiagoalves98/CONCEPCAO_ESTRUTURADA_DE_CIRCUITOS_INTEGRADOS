module tristate_5(input logic [5:0]a, input logic en, output tri [5:0]y);

assign y = en ? a : 5'bz;

endmodule 