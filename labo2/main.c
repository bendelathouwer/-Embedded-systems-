/*
 *  Hands-on 2    : Pushbutton (GPIO)
 *  Doel          : Verder leren werken met GPIO (input)
 *  Beginsituatie : Het programma werkt niet. Het is een begin vanwaar je kan verder bouwen.
 *
 *
 *  Opdracht3     : Maak het programma zo dat:
 *                      1. als je op een knop drukt de status led laat branden
 *                      2. als je de knop terug loslaat de status led niet brandt
 *  Opdracht4     : Maak het programma zo dat de drukknoppen de status led laten toggelen.
 *                      1. als je op de knop drukt en terug los laat => led brand
 *                      2. als je dan terug drukt en terug los laat => led gaat uit
 *                  Hou hierbij rekening met dender (aka Bounce).
 */

#include "inc/hw_types.h"
#include "inc/hw_memmap.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"
#include <stdint.h>

int main(void)
{

	// configureren van de GPIO pinnen(input en output + pullup)

	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
	SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);
	GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_1);

    GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_1, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);


	// init  en declaratie van de button variable

//    int status = 0 ;
    int count = 2;

    // oneindige lus
    while(1)
    {
    	int Button_state  = GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_1);
    	if( Button_state == 0 && count%2 == true )
		{
    		//
    		GPIOPinWrite(GPIO_PORTF_BASE,  GPIO_PIN_2,  ~GPIO_PIN_2);
    		count++;
		}
    	else
    	{
    		GPIOPinWrite(GPIO_PORTF_BASE,  GPIO_PIN_2, GPIO_PIN_2);

    	}
    	count++;
    }
}
