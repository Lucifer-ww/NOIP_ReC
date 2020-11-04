#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
int w[10000],c[10000],p[10000],f[10000],i,j,n,m,k;
int main ()
{
	cin>>m>>n;
	for (i=1; i<=n; i++)
	  cin>>w[i]>>c[i]>>p[i];
	for (i=1; i<=n; i++)
	if (p[i]==0)
	{
		for (j=w[i]; j<=m; j++)
		  f[j]=max(f[j],f[j-w[i]]+c[i]);
	}
	else 
	{
		for (j=1; j<=p[i]; j++)
		  for (k=m; k>=w[i]; k--)
		    f[k]=max(f[k],f[k-w[i]]+c[i]);
	}
	cout<<f[m];
}
