#include "somador1bit.h"

using namespace std;

bitset<NUM_BITS> HalfAdder_Output(const bitset<NUM_BITS> &input1, const bitset<NUM_BITS> &input2)
{
    return input1^input2;
}

bitset<NUM_BITS> HalfAdder_Cout(const bitset<NUM_BITS> &input1, const bitset<NUM_BITS> &input2)
{
    return input1 & input2;
}

bitset<NUM_BITS> FullAdder1bit_Output(const bitset<NUM_BITS> &inputA, const bitset<NUM_BITS> &inputB, const bitset<NUM_BITS> &c_in)
{
    return HalfAdder_Output(HalfAdder_Output(inputA, inputB), c_in);
}

bitset<NUM_BITS> FullAdder1bit_Cout(const bitset<NUM_BITS> &inputA, const bitset<NUM_BITS> &inputB, const bitset<NUM_BITS> &c_in)
{
    return HalfAdder_Cout(inputA, inputB) | HalfAdder_Cout(inputA, c_in) | HalfAdder_Cout(inputB, c_in);
}
