// ArrayReverser.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <stdlib.h>

extern "C" void Reverser(int* y, const int *x, int n);

int main()
{
	const int n = 10;
	int x[n], y[n];

	for (int i = 0; i < n; i++)
		x[i] = i;

	Reverser(y, x, n);

	printf("\nArray Reverser---------------------\n");

	for (int i = 0; i < n; i++)
	{
		printf("xsrc: %5d     ydest: %5d\n", x[i], y[i]);
	}
	
	return 0;

}

