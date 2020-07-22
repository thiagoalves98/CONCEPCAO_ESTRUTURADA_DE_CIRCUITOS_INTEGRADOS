#include <iostream>
#include <bitset>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

#define NUM_BITS 32
#define NUM_BITS_ADDR 26
#define NUM_BITS_AFTER_SHIFTER 28
#define NUM_BITS_PC 4

using namespace std;

bitset<NUM_BITS> AggregatorShifter2(const bitset<NUM_BITS_ADDR> &inputADDR, const bitset<NUM_BITS_PC> &inputPC)
{
    bitset<NUM_BITS> output;
    bitset<NUM_BITS_AFTER_SHIFTER> inputAux;

    for(int i = 0; i < NUM_BITS_AFTER_SHIFTER; i++){
        if(i >= NUM_BITS_ADDR)
            inputAux.reset(i);
        else
            inputAux[i] = inputADDR[i];
    }

    inputAux = inputAux << 2;

    for(int i = 0; i < NUM_BITS_AFTER_SHIFTER; i++){
        output[i] = inputAux[i];
    }
    for(int i = 0; i < NUM_BITS_PC; i++){
        output[i + NUM_BITS_AFTER_SHIFTER] = inputPC[i];
    }

    return output;
}

void FileShifter(string filename, const vector< bitset<NUM_BITS_ADDR>> &inputsADDR, const vector< bitset<NUM_BITS_PC>> &inputsPC)
{
    ofstream fileGold;
    fileGold.open(filename.c_str());

    if(fileGold.is_open()){
        for(unsigned int i = 0; i < inputsADDR.size(); i++){
            fileGold << inputsADDR[i] << "_" << inputsPC[i] << "_" << AggregatorShifter2(inputsADDR[i], inputsPC[i]) << endl;
        }

        fileGold.close();
    }
}

int main(void)
{
    vector< bitset<NUM_BITS_ADDR>> inputsADDR;
    vector< bitset<NUM_BITS_PC>> inputsPC;

    bitset<NUM_BITS_ADDR> inputADDR(0);
    bitset<NUM_BITS_PC> inputPC(string("1111"));

    inputsADDR.push_back(inputADDR);
    inputsPC.push_back(inputPC);

    for(int i = 0; i < NUM_BITS_ADDR; i++){
        inputADDR.set(i);
    }
    for(int i = 0; i < NUM_BITS_PC; i++){
        inputPC.reset(i);
    }

    inputsADDR.push_back(inputADDR);
    inputsPC.push_back(inputPC);

    FileShifter("aggregatorShifter2.tv", inputsADDR, inputsPC);

    return 0;
}
