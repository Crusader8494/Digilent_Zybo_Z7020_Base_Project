/*
 * DFTlib.h
 *
 *  Created on: May 15, 2021
 *      Author: Ryan
 */

#ifndef SRC_DFTLIB_H_
#define SRC_DFTLIB_H_

typedef struct IQType
{
	float Samples[1024];
	float I[512];
	float Q[512];
	float Frequency[512];
	float Magnitude[512];
}IQType;

//struct IQType InitializeIQTypeStruct(struct IQType data);
void DFT(struct IQType *data);
float PeakSearch(struct IQType data);

#endif /* SRC_DFTLIB_H_ */
