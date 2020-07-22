module MIPS_FSM(input logic [5:0] funct, opcode,
					 input logic clock, reset,
					 output logic [2:0] ALUControl,
					 output logic [1:0] ALUSrcB, PCSrc,
					 output logic IorD, IRWrite, RegDst, MemtoReg,
					 RegWrite, ALUSrcA, Branch, PCWrite, MemWrite, BranchNE);
					 
	parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6 = 6, S7 = 7, S8 = 8, S9 = 9, S10 = 10, S11 = 11, S12 = 12, S13 = 13, S14 = 14, S15 = 15;
	
	reg[3:0] state;
	
	logic [2:0] ALUOp;
	
	MIPS_ALUDECODER ALUDecoder(funct, ALUOp, ALUControl);
	
	
	
always@(state) begin
		case(state)
		
			S0: begin  // Fetch
				$display("S0 Fetch");
				IorD 		= 1'b0;
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b01;
				ALUOp 	= 3'b000;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b1;
				PCWrite 	= 1'b1;
				
				BranchNE = 1'b0;
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
			end
			
			S1: begin // Decode
				$display("S1 Decode");
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b11;
				ALUOp 	= 3'b000;
	
				BranchNE = 1'b0;
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S2: begin // MemAdr
				$display("S2 MemArd");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b10;
				ALUOp 	= 3'b000;
				
				BranchNE = 1'b0;		
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S3: begin // MemRead
				$display("S3 MemRead");
				IorD 		= 1'b1;
				
				BranchNE = 1'b0;		
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b00;
				ALUOp 	= 3'b000;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S4: begin // MemWriteback
				$display("S4 MemWriteback");
				RegDst 	= 1'b0;
				MemtoReg = 1'b1;
				RegWrite = 1'b1;
				
				BranchNE = 1'b0;		
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				IorD 		= 1'b0;
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b00;
				ALUOp 	= 3'b000;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S5: begin // MemWrite
				$display("S5 MemWrite");
				IorD 		= 1'b1;
				MemWrite = 1'b1;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b00;
				ALUOp 	= 3'b000;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;	
			end
			
			S6: begin // Execute
				$display("S6 Execute");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b00;
				ALUOp 	= 3'b010;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S7: begin // ALUWriteback
				$display("S7 ALUWriteback");
				RegDst   = 1'b1;
				MemtoReg = 1'b0;
				RegWrite = 1'b1;
				
				BranchNE = 1'b0;			
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				IorD 		= 1'b0;
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b00;
				ALUOp 	= 3'b000;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;	
			end
			
			S8: begin // Branch
				$display("S8 Branch");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b00;
				PCSrc 	= 2'b01;
				ALUOp 	= 3'b001;
				Branch 	= 1'b1;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S9: begin // ADDI Execute
				$display("S9 ADDI Execute");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b10;
				ALUOp 	= 3'b000;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;	
			end
			
			S10: begin // ADDIWriteback
				$display("10 ADDIWriteback");
				RegDst 	= 1'b0;
				MemtoReg = 1'b0;
				RegWrite = 1'b1;
				
				BranchNE = 1'b0;			
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				IorD 		= 1'b0;
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b00;
				ALUOp 	= 3'b000;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S11: begin // Jump
				$display("S11 Jump");
				PCSrc 	= 2'b10;
				PCWrite 	= 1'b1;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				ALUSrcA 	= 1'b0;
				ALUSrcB 	= 2'b00;
				ALUOp 	= 3'b000;
				IRWrite 	= 1'b0;
			end
			
			S12: begin // ORI Execute
				$display("S12 ORI Execute");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b10;
				ALUOp 	= 3'b110;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S13: begin // XORI Execute
				$display("S13 XORI Execute");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b10;
				ALUOp 	= 3'b111;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
			S14: begin // SLTIExecute
				$display("S14 SLTIExecute");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b10;
				ALUOp 	= 3'b011;
				
				BranchNE = 1'b0;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				Branch 	= 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				PCSrc 	= 2'b00;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;	
			end
			
			S15: begin // Branch Not Equal
				$display("S15");
				ALUSrcA 	= 1'b1;
				ALUSrcB 	= 2'b00;
				PCSrc 	= 2'b01;
				ALUOp 	= 3'b100;
				Branch 	= 1'b1;
				
				BranchNE = 1'b1;			
				MemtoReg = 1'b0;
				RegDst 	= 1'b0;
				MemWrite = 1'b0;
				RegWrite = 1'b0;
				IorD 		= 1'b0;
				IRWrite 	= 1'b0;
				PCWrite 	= 1'b0;
			end
			
		endcase
	end
	
always@(posedge clock or posedge reset) begin
	
	if(reset) begin
		state <= S0;
	end
		
	else begin
	
			case(state)
				S0: begin
					state <= S1;
				end
				
				S1: begin
					case(opcode)
						6'b100011: begin
							state <= S2;
						end
						6'b101011: begin
							state <= S2;
						end
						6'b000000: begin
							state <= S6;
						end
						6'b000100: begin
							state <= S8;
						end
						6'b001000: begin
							state <= S9;
						end
						6'b000010: begin
							state <= S11;
						end
						6'b001101: begin//ori
							state <= S12;
						end
						6'b001110: begin//xori
							state <= S13;
						end
						6'b001010: begin//slti
							state <= S14;
						end
						6'b000101: begin//bne
							state <= S15;
						end
						default: state <= S0;
					endcase
				end
				
				S2: begin
					case(opcode)
						6'b100011: begin
							state <= S3;
						end
						6'b101011: begin
							state <= S5;
						end
						default: state <= S0;
					endcase
				end
				
				S3: begin
					state <= S4;
				end
				
				S4: begin			
					state <= S0;
				end
				
				S5: begin	
					state <= S0;
				end
				
				S6: begin		
					state <= S7;
				end
				
				S7: begin	
					state <= S0;
				end
				
				S8: begin	
					state <= S0;
				end
				
				S9: begin	
					state <= S10;
				end
				
				S10: begin
					state <= S0;
				end
				
				S11: begin
					state <= S0;
				end
				
				S12: begin	
					state <= S10;
				end
				
				S13: begin	
					state <= S10;
				end
				
				S14: begin	
					state <= S10;
				end
				
				S15: begin	
					state <= S0;
				end
			endcase
		end
	end
		
endmodule
