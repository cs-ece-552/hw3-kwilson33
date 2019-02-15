/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    a 4-bit (quad) 4-1 Mux template
*/
module mux4_1_4b(InA, InB, InC, InD, S, Out);

    // parameter N for length of inputs and outputs (to use with larger inputs/outputs)
    parameter N = 4;

    input  [N-1:0]   InA, InB, InC, InD;
    input  [1:0]     S;
    output [N-1:0]  Out;

	
	mux4_1 quadMux0(InA[N-4], InB[N-4], InC[N-4], InD[N-4], S, Out[N-4]);
	mux4_1 quadMux1(InA[N-3], InB[N-3], InC[N-3], InD[N-3], S, Out[N-3]);
	mux4_1 quadMux2(InA[N-2], InB[N-2], InC[N-2], InD[N-2], S, Out[N-2]);
	mux4_1 quadMux3(InA[N-1], InB[N-1], InC[N-1], InD[N-1], S, Out[N-1]);


endmodule
