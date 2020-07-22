module flopr(input logic clk, input logic reset, input logic d, output logic q);

//Reset Assincrono
always_ff @(posedge clk, posedge reset)
	if (reset) q <= 1'b0;
	else q <= d;
endmodule


