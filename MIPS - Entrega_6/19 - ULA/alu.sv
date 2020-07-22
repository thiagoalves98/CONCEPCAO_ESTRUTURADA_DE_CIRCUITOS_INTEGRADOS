module alu(input logic[2:0] ALUcontrol, input logic SrcA, SrcB, cin, addSubSignal, less, output logic set, ALUresult, cout);
	
	logic B_or_Complement2;
	logic [7:0]out;
	
	and   andULA(out[0], SrcA, SrcB);
	nand nandULA(out[5], SrcA, SrcB);
	or     orULA(out[1], SrcA, SrcB);
	nor   norULA(out[3], SrcA, SrcB);
	xor   xorULA(out[4], SrcA, SrcB);

	xor addSub(B_or_Complement2, SrcB, addSubSignal);
	
	somador somadorULA(SrcA, B_or_Complement2, cin, OutputSomador, cout);
	
	assign out[2] = OutputSomador;
	assign out[6] = OutputSomador;
	assign set = OutputSomador;
	assign out[7] = less;
	
	mux8 muxULA(out, ALUcontrol, ALUresult);
	
endmodule 

