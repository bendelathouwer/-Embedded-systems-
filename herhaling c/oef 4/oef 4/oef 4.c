#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void To_u(char);

void main(void)
{
	char tekst[200];

	gets(tekst); // leest de tekst in 
	To_u(tekst);

}

void To_u(tekst)
{
	int bitToClear = 5;

	int lengte = strlen(tekst);

	for (int i = 0; i < lengte; i++)
	{
		tekst[i] &= ~(1 << bitToClear);
	}


}