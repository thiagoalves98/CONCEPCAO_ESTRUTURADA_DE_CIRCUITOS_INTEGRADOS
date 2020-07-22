module shiftpc( input logic [3:0]pc, input logic [25:0]a, output logic [31:0]y);

assign y = {pc,a,2'b00};

endmodule

