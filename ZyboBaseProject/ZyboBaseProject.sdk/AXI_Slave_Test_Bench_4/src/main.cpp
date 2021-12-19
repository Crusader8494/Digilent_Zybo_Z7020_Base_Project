/*
 * Empty C++ Application
 */
#include "xparameters.h"
#include "xil_io.h"
#include <stdio.h>
#include "platform.h"
#include <xgpiops.h>
#include "xparameters.h"
#include "sleep.h"

int logOut(char input, int color){

	return 0;
}

int main()
{

	init_platform();


	while(1){
		xil_printf("buh\r\n");
	}

	Xil_Out32(0x43C0003C, 0x40000042);
	Xil_Out32(0x43C0003C, 0x40000142);

/*
	int buh = 0;
	int loopCount = 0;

	while(1){

		if(buh == 0xF){
			buh = 0x0;
		}
		else{
			buh += 0x1;
		}

		while(loopCount < 9999999){
			loopCount += 1;
		}

		loopCount = 0;

		Xil_Out32(0x43C00000, buh);

		xil_printf("buh");
	}
*/
/*
	Xil_Out32(0x43C00000, 0);

	int loopCount = 0;

	while(loopCount < 9999999){
		loopCount += 1;
	}

	for(int i = 0; i != 16; i++){
		Xil_Out32(0x43C00000 + (i*4), 0xFFFFFFFF);
	}

	int readBack[16];

	for(int i = 0; i != 16; i++){
		readBack[i] = Xil_In32(0x43C00000 + (i*4));
	}

	int readBackSuccess = 1;

	for(int i = 0; i != 16; i++){
		if(readBack[i] != 0xFFFFFFFF){
			readBackSuccess = 0;
		}
	}

	Xil_Out32(0x43C00000, readBackSuccess);
*/
	return 0;
}
