/*
 * RWUART.c
 *
 *  Created on: May 8, 2021
 *      Author: Ryan
 */

#include "xil_io.h"
#include "sleep.h"
#include "RWUART.h"

void initUART(){ // Call this to reset UART IP

	Xil_Out32(UARTTxAddress, 0x40000000);

	usleep(100000);

	Xil_Out32(UARTTxAddress, 0x00000000);

	return;
}

void sendUARTChar(char a){ // Don't call this directly

	a = a & 0x000000FF; // 8 Bit Mask on Character

	int status = Xil_In32(UARTTxAddressFeedback);

	if(status != 0)
	{
		print("TX FIFO FULL: ");

		while(status != 0)
		{
			print("#");
			status = Xil_In32(UARTTxAddressFeedback);
		}

		print("\n\r");
	}


	Xil_Out32(UARTTxAddress, a);
	Xil_Out32(UARTTxAddress, a + 0x100);

	return;
}

void printRW(char string[]){ // Call this with a string "xxxx" and the num of char in that string (4).

	for(int x = 0; x < strlen(string); x++){
		sendUARTChar(string[x]);
	}

	//sendUARTChar('\n');
	//sendUARTChar('\r');

	return;
}

void printRWexact(char string[], int numOfChar){

	for(int x = 0; x < numOfChar; x++){
		sendUARTChar(string[x]);
	}

	return;
}
