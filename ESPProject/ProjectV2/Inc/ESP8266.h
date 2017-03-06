/*
 * ESP8266.h
 *
 *  Created on: Nov 30, 2016
 *      Author: Ben De Lathouwer
 *      dit is work in progress libary voor de esp8266 op Een STM32 F7
 *      er wordt niets opgeslagen in de flas van de esp8266
 *
 */

#ifndef ESP8266_H_
#define ESP8266_H_

//showing that there is activety
void vActivety( void );


//testing the module
void vTestModulle (void);

void vResetModulle ( int iReset   );

void vSleep (int iSleepMode);

int iSetRFPower( int ipower );

#endif /* ESP8266_H_ */
