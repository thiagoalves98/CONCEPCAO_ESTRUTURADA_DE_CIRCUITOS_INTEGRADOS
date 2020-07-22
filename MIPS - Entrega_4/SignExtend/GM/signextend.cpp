#include <iostream>
#include <bitset>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

#define NUM_BITS_INPUT 16
#define NUM_BITS_OUTPUT 32
#define INDEX_EXTENSION 15
#define NUM_CASES_TESTS 2

using namespace std;

bitset<NUM_BITS_OUTPUT> SignalExtension(const bitset<NUM_BITS_INPUT> &input)
{
    bitset<NUM_BITS_OUTPUT> input_aux;

    for(int i = 0; i < NUM_BITS_OUTPUT; i++){
        if(i < NUM_BITS_INPUT)
            input_aux[i] = input[i];
        else
            input_aux.reset(i);
    }

    for(int i = INDEX_EXTENSION; i < NUM_BITS_OUTPUT; i++){
        if(input_aux.test(INDEX_EXTENSION))
            input_aux.set(i);
        else
            input_aux.reset(i);
    }

    return input_aux;
}

void FileSignalExtension(string filename, const vector< bitset<NUM_BITS_INPUT>> &inputs)
{
    ofstream fileGold;
    fileGold.open(filename.c_str());

    if(fileGold.is_open()){
        for(int i = 0; i < NUM_CASES_TESTS; i++){
            fileGold << inputs[i] << "_" << SignalExtension(inputs[i]) << endl;
        }

        fileGold.close();
    }
}

int main(void)
{
    vector< bitset<NUM_BITS_INPUT>> inputs;
    inputs.resize(NUM_CASES_TESTS);

    bitset<NUM_BITS_INPUT> input0(string("0101101010101011"));
    bitset<NUM_BITS_INPUT> input1(string("1101101110000011"));

    inputs[0] = input0;
    inputs[1] = input1;

    FileSignalExtension("signalExtension.tv", inputs);

    return 0;
}

