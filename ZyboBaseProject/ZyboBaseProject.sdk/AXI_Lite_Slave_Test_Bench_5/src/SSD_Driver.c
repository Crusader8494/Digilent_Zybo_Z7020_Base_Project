/*
 * SSD_Driver.c
 *
 *  Created on: May 8, 2021
 *      Author: Ryan
 */

#include "xil_io.h"
#include "sleep.h"
#include "SSD_Driver.h"

void printSSD(int num){

	if(num >= 99)
	{
		num = 99;
	}
	else if(num <= 0)
	{
		num = 0;
	}

	Xil_Out32(SSDControlAddress, num);

	return;
}
