#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <fstream>
#include <string>
#include <bitset>

using namespace std;


int state = 0;
string ALUOp = "000";

void write(ofstream& file, string &clk, string &rst, string &opcode, string &funct, string &MemtoReg, string &RegDst, string &IorD, string &PCSrc, string &ALUSrcA, string &IRWrite, string &MemWrite, string &PCWrite, string &Branch, string &RegWrite, string &BranchNE, string &ALUSrcB, string &ALUControl){
    file << clk;
    file << "_";
    file << rst;
    file << "_";
    file << opcode;
    file << "_";
    file << funct;
    file << "_";
    file << ALUControl;
    file << "_";
    file << ALUSrcA;
    file << "_";
    file << ALUSrcB;
    file << "_";
    file << Branch;
    file << "_";
    file << IorD;
    file << "_";
    file << IRWrite;
    file << "_";
    file << MemtoReg;
    file << "_";
    file << PCSrc;
    file << "_";
    file << PCWrite;
    file << "_";
    file << RegDst;
    file << "_";
    file << RegWrite;
    file << "_";
    file << MemWrite;
    file << "_";
    file << BranchNE;
    file << endl;
}

void fsm (string &clk, string &rst, string &opcode, string &MemtoReg, string &RegDst, string &IorD, string &PCSrc, string &ALUSrcA, string &IRWrite, string &MemWrite, string &PCWrite, string &Branch, string &RegWrite, string &BranchNE, string &ALUSrcB, string &ALUOp){
	if(rst == "1")
        state = 0;

        switch(state){
                case 0:
                    // Fetch
                    IorD = "0";
                    ALUSrcA = "0";
                    ALUSrcB = "01";
                    ALUOp = "000";
                    PCSrc = "00";
                    IRWrite = "1";
                    PCWrite = "1";

                    // Para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";

                    state = 1;
                    break;

                case 1: // Decode
                    ALUSrcA = "0";
                    ALUSrcB = "11";
                    ALUOp = "000";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    if(opcode == "100011"){
                        state = 2;
                    }else if(opcode == "101011"){
                        state = 2;
                    }else if(opcode == "000000"){
                        state = 6;
                    }else if(opcode == "000100"){
                        state = 8;
                    }else if(opcode == "001000"){
                        state = 9;
                    }else if(opcode == "000010"){
                        state = 11;
                    }else if(opcode == "001101"){
                        state = 12;
                    }else if(opcode == "001110"){
                        state = 13;
                    }else if(opcode == "001010"){
                        state = 14;
                    }else if(opcode == "000101"){
                        state = 15;
                    }else{
                        state = 0;
                    }



                    break;

                case 2: // MemAdr
                    ALUSrcA = "1";
                    ALUSrcB = "10";
                    ALUOp = "000";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    if(opcode == "100011"){
                        state = 3;
                    }else{if(opcode == "101011"){
                        state = 5;
                    }else{
                        state = 0;
                    }}
                    break;

                case 3: // MemRead
                    IorD = "1";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    ALUSrcA = "0";
                    ALUSrcB = "00";
                    ALUOp = "000";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 4;
                    break;

                case 4:  // MemWriteback
                    RegDst = "0";
                    MemtoReg = "1";
                    RegWrite = "1";

                    // para completar as saídas
                    BranchNE = "0";
                    MemWrite = "0";
                    Branch = "0";
                    IorD = "0";
                    ALUSrcA = "0";
                    ALUSrcB = "00";
                    ALUOp = "000";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 0;

                    break;

                case 5:  // MemWrite
                    IorD = "1";
                    MemWrite = "1";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    Branch = "0";
                    RegWrite = "0";
                    ALUSrcA = "0";
                    ALUSrcB = "00";
                    ALUOp = "000";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 0;

                    break;

                case 6:  // Execute
                    ALUSrcA = "1";
                    ALUSrcB = "00";
                    ALUOp = "010";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 7;

                    break;

                case 7:  // ALUWriteback
                    RegDst   = "1";
                    MemtoReg = "0";
                    RegWrite = "1";

                    // para completar as saídas
                    BranchNE = "0";
                    MemWrite = "0";
                    Branch = "0";
                    IorD = "0";
                    ALUSrcA = "0";
                    ALUSrcB = "00";
                    ALUOp = "000";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 0;

                    break;

                case 8:  // Branch
                    ALUSrcA = "1";
                    ALUSrcB = "00";
                    PCSrc = "01";
                    ALUOp = "001";
                    Branch = "1";
                    BranchNE = "0";

                    // para completar as saídas
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    RegWrite = "0";
                    IorD = "0";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 0;

                    break;

                case 9:  // ADDIExecute
                    ALUSrcA = "1";
                    ALUSrcB = "10";
                    ALUOp = "000";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 10;

                    break;

                case 10:  // ADDIWriteback
                    RegDst = "0";
                    MemtoReg = "0";
                    RegWrite = "1";

                    // para completar as saídas
                    BranchNE = "0";
                    MemWrite = "0";
                    Branch = "0";
                    IorD = "0";
                    ALUSrcA = "0";
                    ALUSrcB = "00";
                    ALUOp = "000";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 0;

                    break;

                case 11:  // Jump
                    PCSrc = "10";
                    PCWrite = "1";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    ALUSrcA = "0";
                    ALUSrcB = "00";
                    ALUOp = "000";
                    IRWrite = "0";

                    state = 0;

                    break;
                case 12:  // ORIExecute
                    ALUSrcA = "1";
                    ALUSrcB = "10";
                    ALUOp = "110";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 10;

                    break;
                case 13:  // XORIExecute
                    ALUSrcA = "1";
                    ALUSrcB = "10";
                    ALUOp = "111";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 10;
                    break;
                case 14:  // SLTIExecute
                    ALUSrcA = "1";
                    ALUSrcB = "10";
                    ALUOp = "011";

                    // para completar as saídas
                    BranchNE = "0";
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    Branch = "0";
                    RegWrite = "0";
                    IorD = "0";
                    PCSrc = "00";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 10;

                    break;
                case 15:  // Branch not Equal
                   ALUSrcA = "1";
                    ALUSrcB = "00";
                    PCSrc = "01";
                    ALUOp = "100";
                    Branch = "1";
                    BranchNE = "1";

                    // para completar as saídas
                    MemtoReg = "0";
                    RegDst = "0";
                    MemWrite = "0";
                    RegWrite = "0";
                    IorD = "0";
                    IRWrite = "0";
                    PCWrite = "0";

                    state = 0;

                    break;
        }

}

void alu_decoder(string &funct, string &ALUOp, string &ALUControl){
    std::bitset<3> opALU(ALUOp);

    switch(opALU.to_ulong()){
        case 0:
            ALUControl = "010";
            break;
        case 1:
            ALUControl = "110";
            break;
        case 2:
            if(funct == "100000"){
                    ALUControl = "010";
				}else{if(funct == "100010"){
                    ALUControl = "110";
				}else{if(funct == "100100"){
                    ALUControl = "000";
				}else{if(funct == "100101"){
                    ALUControl = "001";
				}else{if(funct == "101010"){
                    ALUControl = "111";
				}else{if(funct == "100110"){
                    ALUControl = "011";
				}else{if(funct == "100111"){
                    ALUControl = "100";
				}else{
                    ALUControl = "000";
				}}}}}}}
            break;
        case 3:
            ALUControl = "111";
            break;
        case 4:
            ALUControl = "110";
            break;
        case 6:
            ALUControl = "001";
            break;
        case 7:
            ALUControl = "011";
            break;
        default:
            ALUControl = "000";
    }
}

void control_unit(ofstream& file,string &clk, string &rst, string &opcode, string &funct, string &MemtoReg, string &RegDst, string &IorD, string &PCSrc, string &ALUSrcA, string &IRWrite, string &MemWrite, string &PCWrite, string &Branch, string &RegWrite, string &BranchNE, string &ALUSrcB, string &ALUControl){
    if(clk == "1"){
        fsm(clk,rst,opcode,MemtoReg,RegDst,IorD,PCSrc,ALUSrcA,IRWrite,MemWrite,PCWrite,Branch,RegWrite,BranchNE,ALUSrcB,ALUOp);
        alu_decoder(funct,ALUOp,ALUControl);
    }
    write(file,clk,rst,opcode,funct,MemtoReg,RegDst,IorD,PCSrc,ALUSrcA,IRWrite,MemWrite,PCWrite,Branch,RegWrite,BranchNE,ALUSrcB,ALUControl);
}

int main(){
    ofstream file("control_unit.tv");

    string rst = "0";
    vector<string> clk = {"0","1"};
    vector<string> opcode = {"100011","101011","000000","000000","000000","000000","000000","000100","001000","000010","000000","000000","001101","001110","001010","000101"};
    vector<string> funct  = {"100000","100000","100000","100010","100100","100101","101010","100000","100000","100000","100111","100110","100000","100000","100000","100000"};

    //                          LW    ,    SW ,    ADD  ,   SUB  ,  AND   ,   OR   ,  SLT  ,    BEQ  ,   ADDI ,   J   ,    NOR  ,   XOR,   ORI    ,   XORI

    string MemtoReg = "0",RegDst = "0",IorD = "0",PCSrc = "00",ALUSrcA = "0",IRWrite = "1",MemWrite = "0",PCWrite = "1",Branch = "0",RegWrite = "0", BranchNE = "0",ALUSrcB = "01",ALUControl = "010";

    int i = 0;

    int j = 0;
    int k = 0;
    int l = 0;
    while(i != 16){
        if(k > 1)
            k = 0;

        if(l < 2){
            rst = "1";
            j = 0;
        }
        else
            rst = "0";

        control_unit(file,clk[k],rst,opcode[i],funct[i],MemtoReg,RegDst,IorD,PCSrc,ALUSrcA,IRWrite,MemWrite,PCWrite,Branch,RegWrite,BranchNE,ALUSrcB,ALUControl);
        cout << opcode[i] << " " << i << " " << k << " " << state << endl;

        if(state == 1 && k == 1 && j > 1){
            j = 0;
            i++;
        }

        k++;
        j++;
        l++;
    }
    return 0;
}
