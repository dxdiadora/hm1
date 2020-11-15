#include <stdio.h>
#include "myMath.h"

float add(float x, float y)
{
	return x+y;
}

float sub(float x, float y)
{
	return x-y;
}

double mul(double x ,int y)
{
	float ans = x*y;
	return ans;
}

double div(double x, int y)
{
	float ans = x/y;
	return ans;
}
