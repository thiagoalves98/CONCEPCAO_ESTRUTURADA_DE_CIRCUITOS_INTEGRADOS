module alu_decoder( input logic [5:0]funct, input logic [2:0]ALUOp, output logic [2:0]ALUControl);
	
	
always_comb begin
	case(ALUOp)
		3'b000: ALUControl = 3'b010; //ADDI, SW, LW
		3'b001: ALUControl = 3'b110;//BEQ
		3'b010: begin
			case(funct) 
				6'b100000: ALUControl = 3'b010;//ADD
				6'b100010: ALUControl = 3'b110;//SUB
				6'b100100: ALUControl = 3'b000;//AND
				6'b100101: ALUControl = 3'b001;//OR
				6'b101010: ALUControl = 3'b111;//SLT
				6'b100110: ALUControl = 3'b011;//XOR
				6'b100111: ALUControl = 3'b100;//NOR
				default:   ALUControl = 3'b000;//default(ADD)
			endcase
		end
			
		3'b011: ALUControl = 3'b111;//SLTI
		3'b100: ALUControl = 3'b110;//BNE
		//3'b101: ALUControl = 3'b001;//ORI
		3'b110: ALUControl = 3'b001;//ORI
		3'b111: ALUControl = 3'b011;//XORI
		default: ALUControl = 3'b000;
	endcase
end
	
endmodule
