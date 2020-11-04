#include<iostream>
#include<stdio.h>
using namespace std;
double a,b,c,d;
double f(double x)
{
	return a*x*x*x+b*x*x+c*x+d;
}
int main()
{
	double x1,x2,xx;
	int x;
	cin>>a>>b>>c>>d;
	for (x=-100;x<=100;x++)
	{
		x1=x; x2=x+1;
		if (f(x1)==0) printf("%.2lf ",x1);
		else
		if (f(x1)*f(x2)<0)
		{
			while (x2-x1>=0.001)
			{
				xx=(x1+x2)/2;
				if (f(x1)*f(xx)<=0) x2=xx;
				else x1=xx;
				}
			printf("%.2lf ",x1);
			}
		}
	cout<<endl;
	return 0;
}
