#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;


int main()
{
	int n,a[300],i,j;
	
	cin>>n;
	printf("%d\n",n);
	for (i=1;i<=n;i++) a[i]=0;
	
	for (i=1;i<=n;i++)
	{
		for (j=1;j<=n;j++) 
		{
			if (j!=i) a[j]=1-a[j];
			printf("%d",a[j]);
		}
		printf("\n");
		}    
	
	return 0;
	}
	
	

