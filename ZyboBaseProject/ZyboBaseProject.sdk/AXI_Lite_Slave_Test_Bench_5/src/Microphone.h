/*
 * Microphone.h
 *
 *  Created on: May 15, 2021
 *      Author: Ryan
 */

#ifndef SRC_MICROPHONE_H_
#define SRC_MICROPHONE_H_

#define MicControlAddress 0x43C00020

void startCapture();
void resetFIFO();
int popSample();
void setSampleRate(double sampRate);
int isPLLLocked();

#endif /* SRC_MICROPHONE_H_ */
