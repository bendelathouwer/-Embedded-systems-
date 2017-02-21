/*
 * ESP8266.c
 *
 *  	 Created on: Nov 30, 2016
 *      Author: Ben De Lathouwer
 *      dit is work in progress libary voor de esp8266 op Een STM32 F7
 *      er wordt niets opgeslagen in de flash van de esp8266
 *
 */
#include "ESP8266.h"
#include "stm32f7xx_hal.h"
extern UART_HandleTypeDef huart7;

void vActivety ( void )
{
	HAL_GPIO_WritePin(LED_GPIO_Port,LED_Pin,GPIO_PIN_SET);
	HAL_Delay(125);
	HAL_GPIO_WritePin(LED_GPIO_Port,LED_Pin,GPIO_PIN_RESET);
	HAL_Delay(125);

}

// recieving data from the uart
void RecieveData( void )
{
	uint8_t usResponse[480]="";
	HAL_UART_Receive(&huart7,usResponse,5,1000);
}

// enabling the arduino
void SendData ( void )
{
	uint8_t usGoComand[8] = "G";
	HAL_UART_Transmit(&huart7,usGoComand,strlen(usGoComand),1000);
}


