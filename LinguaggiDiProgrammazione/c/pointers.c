#include <stdio.h>
#include "altra.h"


struct Test
{
	int i;
} dummy = { 69 };

void foo(int* array, int* numero);
void bar(struct Test* p);

void separata();


int main(int argc, char const *argv[])
{
	int a = 42;
	int* b = &a;
	int z = *b;
	printf("%d\n", z);
	
	int numeri[10];
	for (int i = 0; i < 10; ++i)
	{
		numeri[i] = i;
	}
	for (int i = 0; i < 10;)
	{
		foo(numeri, &i);
	}

	bar(&dummy);

	int* parray = numeri;
	parray += 2;
	printf("%d\n", *parray);

	separata();
	altra();
	
	return 0;
}

void foo(int* array, int* numero)
{
	printf("We %d\n", array[*numero] );
	*numero = *numero + 1;
}

void bar(struct Test* p)
{
	printf("%d == %d\n", (*p).i, p->i);
}
