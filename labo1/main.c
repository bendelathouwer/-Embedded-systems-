/*
* Hands-on 1 : blinky (GPIO)
* Doel : Kennismaken met de IDE en vervolgens met de GPIO van de LM3S6965
* Beginsituatie : Het programma zal een status ledje laten knipperen.

* Opdracht4 : Pas het programma aan zodat je de registers gebruikt (tip HWREG)
* Opdracht5 : Pas het programma verder aan zodat ook de leds van de
* ethernet poort mee knipperen.
*/

// gpio start addres :0x4002.4000 end adress 0x4002.4FFF
#include "inc/hw_types.h"
#include "inc/hw_memmap.h"
#include "inc/hw_gpio.h"
#include "driverlib/gpio.h"
#include "driverlib/debug.h"
#include "driverlib/sysctl.h"

int main(void)
{
volatile unsigned long ulLoop;
//
// Enable the GPIO port that is used for the on-board LED.
//
SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
//
// Enable the GPIO pin for the LED (PF0). Set the direction as output, and
// enable the GPIO pin for digital function.
//
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_0);
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3);
	GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);
// Loop forever.
	while(1)
	{
//
// Delay some time
	//
		for(ulLoop = 0; ulLoop < 70000; ulLoop++);
	//
	// Output high level
	//
//		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_0, ~GPIO_PIN_0);
//		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, ~GPIO_PIN_3);
//		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, ~GPIO_PIN_2);
		HWREG(0x40025000 + (0x00000001 + (0x00000001 << 2)));

	//
	// Delay some time
	//
			for(ulLoop = 0; ulLoop < 70000; ulLoop++);
	//
// Output low level
//
//		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_0, GPIO_PIN_0);
//		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, GPIO_PIN_2);
//		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, GPIO_PIN_3);
			HWREG2;b (0x40025000 + (0x0000000f + (0x0000000f << 2)));
	}
}
