#ifndef SOMADOR1BIT_H_INCLUDED
#define SOMADOR1BIT_H_INCLUDED

#include <iostream>
#include <bitset>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

#define NUM_BITS 1
#define NUM_INPUTS 3
#define NUM_CASES_TEST 8

using namespace std;

extern bitset<NUM_BITS> HalfAdder_Output(const bitset<NUM_BITS> &input1, const bitset<NUM_BITS> &input2);
extern bitset<NUM_BITS> HalfAdder_Cout(const bitset<NUM_BITS> &input1, const bitset<NUM_BITS> &input2);
extern bitset<NUM_BITS> FullAdder1bit_Output(const bitset<NUM_BITS> &inputA, const bitset<NUM_BITS> &inputB, const bitset<NUM_BITS> &c_in);
extern bitset<NUM_BITS> FullAdder1bit_Cout(const bitset<NUM_BITS> &inputA, const bitset<NUM_BITS> &inputB, const bitset<NUM_BITS> &c_in);

#endif // SOMADOR1BIT_H_INCLUDED
