module flopenr32(input logic clk, reset, en, input logic [31:0]d, output logic [31:0]q);
 
//Reset Assincrono
always @(posedge clk, posedge reset) 
	
	if (reset) q <= 32'b0; 
	else if (en) q <= d; 
	
endmodule

