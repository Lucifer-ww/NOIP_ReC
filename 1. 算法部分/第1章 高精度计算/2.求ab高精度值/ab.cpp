#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;



int main()
{
	int n,m,i;
	
	cin>>n>>m;
	printf("%d/%d=%d.",n,m,n/m);
	n%=m;
	
	for (i=1;i<=20;i++)
	{
		n*=10;
		printf("%d",n/m);
		n%=m;
		if (n==0) break;
		}
	printf("\n");
	
	return 0;
	}
	
	

