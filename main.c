#include "myMath.h"
#include <stdio.h>


int main(){
	
	double in;
	printf("Please enter a Real number: \n");
	scanf("%lf",&in);
	
	
	double calc,calc2,ans1,ans2,ans3;
	
	calc = Exponent((int)in);
	calc2 = add(calc,Power(in,3));
	ans1= sub(calc2,2);
	
	calc=Power(in,2);
	calc2= mul(2,calc);
	ans2= add(mul(in,3),calc2);
	
	calc=Power(in,3);
	calc2=mul(4,calc);
	calc= div(calc2,5);
	calc2=mul(in,2);
	ans3= sub(calc,calc2);
	
	printf("The value of f(x) = e^x + x^3 - 2 at the point %0.4lf is: %0.4lf \n",in ,ans1);
	printf("The value of f(x) = 3x + 2x^2 at the point %0.4lf is: %0.4lf \n",in ,ans2);
	printf("The value of f(x) = (4*x^3)/5 -2x at the point %0.4lf is: %0.4lf \n",in ,ans3);

	return 0;

}
