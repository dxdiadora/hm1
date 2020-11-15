#include "myMath.h"
double Exponent(int x)
{
	float ans;
	ans=(Power(E,x));
	return ans;
}

double Power(double x, int y)
{
	float ans=1;
	double repeater = y;
	if(x==0)
	return 0;
	if(x==1)
	return 1;
	if(y==1)
	return x;
	if(y<0)
	repeater= (-y);
	if (y==0)
	return ans;
	do
	{
		ans=ans*x;
		repeater--;
	}
	while (repeater>0);
	if(y<0)
	ans=1/ans;
	return ans;
}
