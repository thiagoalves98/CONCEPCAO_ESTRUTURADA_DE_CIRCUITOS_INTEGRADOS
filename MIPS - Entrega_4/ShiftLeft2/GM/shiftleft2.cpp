#include <iostream>
#include <bitset>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

#define NUM_BITS 32
#define NUM_TEST_CASES 30

using namespace std;

bitset<NUM_BITS> Shifter2(const bitset<NUM_BITS> &input)
{
    return input << 2;
}

void FileShifter(string filename, const vector< bitset<NUM_BITS>> &inputs)
{
    ofstream fileGold;
    fileGold.open(filename.c_str());

    if(fileGold.is_open()){
        for(unsigned int i = 0; i < NUM_TEST_CASES; i++){
            fileGold << inputs[i] << "_" << Shifter2(inputs[i]) << endl;
        }

        fileGold.close();
    }
}

int main(void)
{
    vector< bitset<NUM_BITS>> inputs;
    inputs.resize(NUM_TEST_CASES);

    bitset<NUM_BITS> input(0);

    for(int i = 0; i < NUM_TEST_CASES; i++){
        input.set(i);
        inputs[i] = input;
        input.reset(i);
    }

    FileShifter("shifter2.tv", inputs);

    return 0;
}
