#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;

int main()
{
	int n,i;
	long long f[1001];
	cin>>n;
	memset(f,0,sizeof(f)); f[1]=1;
	for (i=2;i<=n;i++) 
	  if (i%2==1) f[i]=f[i-1]; else f[i]=f[i-1]+f[i/2];
	cout<<f[n];	
	
	return 0;
	}
	
	
