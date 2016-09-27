#include <stdio.h>
#include<string.h>


void main(void)
{
	char tekst[200];
	char tekstBewerking[200];
	int binaireTekst = 0 ;
	printf("geef Karakter in: ");
	
	gets(tekst);//leest de tekst in 
	printf(tekst);

	
	int lengte = strlen(tekst);

	printf("de lengte is:%d\n", lengte);// drukt de lengte van de string af 
	for (int i =0 ; i<lengte;i++)
	{
		tekstBewerking[i] = tekst[i] & 0010000;
	}

	printf("de bewerkte tekst is:\n ");
	printf(tekstBewerking);
	getchar();// wachten op enter 
    return 0;

}