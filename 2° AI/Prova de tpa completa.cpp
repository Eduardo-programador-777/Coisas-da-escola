#include <stdio.h>
#include <string.h>

int contarchar ( char frase[])
	{
		int contar;
		contar = strlen(frase)-1;
		printf("A frase: %s tem %d caracteres.\n", frase, contar);
		return contar;
	}
	
int qtd_digito(char frase[])
{
	int digito=0, carac, i;
	int contar=strlen(frase);
	
	for (i=0; i < contar; i++)
	{
		if(frase[i]>='0' && frase[i]<= '9')
		{
			digito ++;
		}
		
	}
	printf("A frase: %s, tem %d digitos",frase, digito);
	return digito;
}

void copiarfrase (char frase[], char frase2[])
{
	
	strcpy(frase2, frase);
	printf("\nString 1: %s", frase);
	printf("\nString 2: %s", frase2);	
}




int main()
{
	
	
int tcarac, tdig;
	
	int string1, string2;
	
	char frase[100];
	char frase2[100];
	printf("Digite uma frase:");
	fgets(frase, 100, stdin);
	tcarac=contarchar(frase);
	tdig=qtd_digito(frase);
	
	copiarfrase(frase2,frase);
	
	
	
	
	
	

	
	
}
