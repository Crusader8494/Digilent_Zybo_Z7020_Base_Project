/*
 * DFTlib.c
 *
 *  Created on: May 15, 2021
 *      Author: Ryan
 */

//#include <stdio.h>
//#include "xil_printf.h"
//#include "string.h"
//#include "RWUART.h"

#include "math.h"
#include "DFTlib.h"

/*
struct IQType InitializeIQTypeStruct(struct IQType data){

	for(int i = 0; i < 512; i++){
		data.Samples[i] = 0.0;
		data.I[i] = 0.0;
		data.Q[i] = 0.0;
		data.Frequency[i] = 0.0;
		data.Magnitude[i] = 0.0;
	}

	return data;
}
*/

void DFT(struct IQType *data){

	//printRW("Now performing DFT on Samples\n\r");

	float pi = 3.14159265358979323846;

	float TempI = 0.0;
	float TempQ = 0.0;

	for(int k = 0; k < 512; k++){ // k Loop
		TempI = 0.0;
		TempQ = 0.0;

		for(int n = 0; n < 512; n++){ // Multiplication and Accumulation Loop
			TempI = TempI + (data->Samples[n] * cosf(((2.0*pi)/1024.0)*(float)k*(float)n));
			TempQ = TempQ + (data->Samples[n] * (-1 * sinf(((2.0*pi)/1024.0)*(float)k*(float)n)));
		}

		data->I[k] = TempI;
		data->Q[k] = TempQ;
	}

	for(int i = 0; i < 512; i++){ //Calculate Frequency Bins and Magnitude values for IQType Struct
		data->Magnitude[i] = sqrt(pow(data->I[i],2) + pow(data->Q[i],2));
		data->Frequency[i] = (44100/1024) * i;
	}

	return;
}

float PeakSearch(struct IQType data){

	float peakFreq = 0;

	int highestLoc = 0;

	float prevHighestLoc = data.Magnitude[0];

	for(int i = 0; i < 512; i++){

		if(data.Magnitude[i] > prevHighestLoc){
			highestLoc = i;
			prevHighestLoc = data.Magnitude[i];
		}
	}

	peakFreq = data.Frequency[highestLoc];

	return peakFreq;
}
