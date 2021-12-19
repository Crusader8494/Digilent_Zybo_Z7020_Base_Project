/*
 * RWUART.h
 *
 *  Created on: May 8, 2021
 *      Author: Ryan
 */

#ifndef SRC_RWUART_H_
#define SRC_RWUART_H_

#define UARTTxAddress 				0x43C0003C
#define UARTTxAddressFeedback 		0x43C0013C

void initUART();
void sendUARTChar(char);
void printRW();
void printRWexact();


#endif /* SRC_RWUART_H_ */
