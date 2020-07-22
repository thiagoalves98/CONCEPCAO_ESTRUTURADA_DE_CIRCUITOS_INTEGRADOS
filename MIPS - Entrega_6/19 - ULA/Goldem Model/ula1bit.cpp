#include "somador1bit.h"

#define NUM_BITS 1
#define NUM_INPUTS 3
#define NUM_BITS_CONTROL 3
#define NUM_BITS_SIGNAL 1
#define NUM_CASES_TEST 28

using namespace std;

bitset<NUM_BITS> ULA1bit(const bitset<NUM_BITS_CONTROL> &ALUControl, const bitset<NUM_BITS> &SrcA, const bitset<NUM_BITS> &SrcB, const bitset<NUM_BITS_SIGNAL> &carryIn, const bitset<NUM_BITS_SIGNAL> &addSubSignal)
{
    bitset<NUM_BITS> ALUresult;
    bitset<NUM_BITS> SrcB_aux;

    SrcB_aux = SrcB^addSubSignal;

    if(ALUControl.to_string() == "010" || ALUControl.to_string() == "110"){
        ALUresult = FullAdder1bit_Output(SrcA, SrcB_aux, carryIn);
    }
    else if(ALUControl.to_string() == "000"){
        ALUresult = SrcA & SrcB;
    }
    else if(ALUControl.to_string() == "001"){
        ALUresult = SrcA | SrcB;
    }
    else if(ALUControl.to_string() == "011"){
        ALUresult = ~(SrcA | SrcB);
    }
    else if(ALUControl.to_string() == "100"){
        ALUresult = SrcA^SrcB;
    }
    else if(ALUControl.to_string() == "101"){
        ALUresult = ~(SrcA & SrcB);
    }

    return ALUresult;
}

void FileALU1bit(const string filename, const vector < bitset<NUM_BITS_CONTROL>> &ALUControl, const vector< bitset<NUM_BITS>> &SrcA, const vector< bitset<NUM_BITS>> &SrcB, const vector< bitset<NUM_BITS_SIGNAL>> &carryIn, const vector< bitset<NUM_BITS_SIGNAL>> &addSubSignal)
{
    ofstream fileGold;
    fileGold.open(filename.c_str());

    if(fileGold.is_open()){
        for(int i = 0; i < NUM_CASES_TEST; i++){
            fileGold << ALUControl[i] << "_" << SrcA[i] << "_" << SrcB[i] << "_" << carryIn[i] << "_" << addSubSignal[i] << "_" << ULA1bit(ALUControl[i], SrcA[i], SrcB[i], carryIn[i], addSubSignal[i]) << endl;
        }
        fileGold.close();
    }
}

int main(void)
{
    vector< bitset<NUM_BITS>> SrcsA;
    vector< bitset<NUM_BITS>> SrcsB;
    vector< bitset<NUM_BITS_CONTROL>> ALUControls;
    vector< bitset<NUM_BITS_SIGNAL>> carryIn;
    vector< bitset<NUM_BITS_SIGNAL>> addSubSignal;

    SrcsA.resize(NUM_CASES_TEST);
    SrcsB.resize(NUM_CASES_TEST);
    ALUControls.resize(NUM_CASES_TEST);
    carryIn.resize(NUM_CASES_TEST);
    addSubSignal.resize(NUM_CASES_TEST);

    bitset<NUM_BITS> bitsetAux;

    for(int i = 0; i < NUM_CASES_TEST; i++)
        addSubSignal[i].reset(NUM_BITS_SIGNAL - 1);

    //Teste Somador/Subtrator
    for(int i = 0; i < NUM_BITS_CONTROL; i++){
        ALUControls[0].reset(i);
    }
    ALUControls[0].set(1);

    for(int i = 0; i < 8; i++){
        ALUControls[i] = ALUControls[0];
    }

    for(int i = 0; i < 8; i++){
        bitset<NUM_INPUTS> bitsetAux(i);

        for(int j = 0; j < NUM_INPUTS; j++){
            if(!j && bitsetAux.test(j))
                carryIn[i].set(NUM_BITS - 1);
            else if(j==1 && bitsetAux.test(j))
                SrcsB[i].set(NUM_BITS - 1);
            else if(i >= 4)
                SrcsA[i].set(NUM_BITS - 1);
        }
    }

    //Teste AND
    for(int i = 0; i < NUM_BITS_CONTROL; i++){
        ALUControls[8].reset(i);
    }

    for(int i = 8; i < 12; i++){
        ALUControls[i] = ALUControls[8];
        carryIn[i].reset(NUM_BITS - 1);
    }

    for(int i = 8; i < 12; i++){
        bitset<NUM_INPUTS> bitsetAux(i);

        for(int j = 0; j < NUM_INPUTS; j++){
            if(!j && bitsetAux.test(j))
                SrcsB[i].set(NUM_BITS - 1);
            else if(j==1 && bitsetAux.test(j))
                SrcsA[i].set(NUM_BITS - 1);
        }
    }

    //Teste OR
    for(int i = 0; i < NUM_BITS_CONTROL; i++){
        ALUControls[12].reset(i);
    }

    ALUControls[12].set(0);

    for(int i = 12; i < 16; i++){
        ALUControls[i] = ALUControls[12];
        carryIn[i].reset(NUM_BITS - 1);
    }

    for(int i = 12; i < 16; i++){
        bitset<NUM_INPUTS> bitsetAux(i);

        for(int j = 0; j < NUM_INPUTS; j++){
            if(!j && bitsetAux.test(j))
                SrcsB[i].set(NUM_BITS - 1);
            else if(j==1 && bitsetAux.test(j))
                SrcsA[i].set(NUM_BITS - 1);
        }
    }

    //Teste NOR
    for(int i = 0; i < NUM_BITS_CONTROL; i++){
        ALUControls[16].reset(i);
    }

    ALUControls[16].set(0);
    ALUControls[16].set(1);

    for(int i = 16; i < 20 ; i++){
        ALUControls[i] = ALUControls[16];
        carryIn[i].reset(NUM_BITS - 1);
    }

    for(int i = 16; i < 20; i++){
        bitset<NUM_INPUTS> bitsetAux(i);

        for(int j = 0; j < NUM_INPUTS; j++){
            if(!j && bitsetAux.test(j))
                SrcsB[i].set(NUM_BITS - 1);
            else if(j==1 && bitsetAux.test(j))
                SrcsA[i].set(NUM_BITS - 1);
        }
    }

    //Teste XOR
    for(int i = 0; i < NUM_BITS_CONTROL; i++){
        ALUControls[20].reset(i);
    }

    ALUControls[20].set(2);

    for(int i = 20; i < 24; i++){
        ALUControls[i] = ALUControls[20];
        carryIn[i].reset(NUM_BITS - 1);
    }

    for(int i = 20; i < 24; i++){
        bitset<NUM_INPUTS> bitsetAux(i);

        for(int j = 0; j < NUM_INPUTS; j++){
            if(!j && bitsetAux.test(j))
                SrcsB[i].set(NUM_BITS - 1);
            else if(j==1 && bitsetAux.test(j))
                SrcsA[i].set(NUM_BITS - 1);
        }
    }

    //Teste NAND
    for(int i = 0; i < NUM_BITS_CONTROL; i++){
        ALUControls[24].reset(i);
    }

    ALUControls[24].set(0);
    ALUControls[24].set(2);

    for(int i = 24; i < 28; i++){
        ALUControls[i] = ALUControls[24];
        carryIn[i].reset(NUM_BITS - 1);
    }

    for(int i = 24; i < 28; i++){
        bitset<NUM_INPUTS> bitsetAux(i);

        for(int j = 0; j < NUM_INPUTS; j++){
            if(!j && bitsetAux.test(j))
                SrcsB[i].set(NUM_BITS - 1);
            else if(j==1 && bitsetAux.test(j))
                SrcsA[i].set(NUM_BITS - 1);
        }
    }

    FileALU1bit("ula1bit.tv", ALUControls, SrcsA, SrcsB, carryIn, addSubSignal);

    return 0;
}
