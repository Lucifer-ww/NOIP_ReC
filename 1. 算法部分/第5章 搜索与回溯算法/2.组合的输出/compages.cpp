#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;

int n,m,a[300];

void pr(int k,int last)
{
	if (k>m) 
	{ 
		for (int i=1;i<m;i++) printf("%d ",a[i]);
		printf("%d\n",a[m]);
		return; 
	}
	for (int i=last+1;i<=n;i++) { a[k]=i; pr(k+1,i); }
	}

int main()
{
	cin>>n>>m;
	pr(1,0);
	
	return 0;
	}
	
	

