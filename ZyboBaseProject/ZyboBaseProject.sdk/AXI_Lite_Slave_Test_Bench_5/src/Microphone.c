/*
 * Microphone.c
 *
 *  Created on: May 15, 2021
 *      Author: Ryan
 */

#include "xil_io.h"
#include "sleep.h"
#include "Microphone.h"

void startCapture(){
	//Start, then poll for end, then stop

	Xil_Out32(MicControlAddress, 0x00000001);

	//printf("Capturing Microphone Samples\n\r");

	int safetyCounter = 0;

	while((Xil_In32(MicControlAddress + 0x100) & 0x00001000) == 0){
		//printf(".");
		//int word = Xil_In32(MicControlAddress + 0x00000100);
		//printf("word: 0x%x\n\r", word);

		if(safetyCounter >= 300){
			//printf("\n\r__TIMEOUT__\n\r");
			break;
		}
		else{
			safetyCounter = safetyCounter + 1;
		}

		usleep(100000);
	}

	//printf("Done Capturing Microphone Samples\n\r");

	Xil_Out32(MicControlAddress, 0x00000000);
}

void resetFIFO(){
	//printf("Reseting Mic Sample FIFO\n\r");
	Xil_Out32(MicControlAddress, 0x00000002);
	usleep(10000);
	Xil_Out32(MicControlAddress, 0x00000000);
	return;
}

int popSample(){
	//FWFT
	int sample = Xil_In32(MicControlAddress + 0x100);

	if((Xil_In32(MicControlAddress + 0x100) & 0x00002000) > 0){
		return 0;
	}
	else{
		Xil_Out32(MicControlAddress + 0x8, 0x00000001);
		usleep(1);
		Xil_Out32(MicControlAddress + 0x8, 0x00000000);
	}

	return sample;
}

void setSampleRate(double sampRate){
	double data = 1/sampRate;

	data = data / 0.000000010;

	Xil_Out32(MicControlAddress + 0x4, (int)data);

	return;
}

int isPLLLocked(){
	return (Xil_In32(MicControlAddress + 0x100) & 0x00004000);
}
