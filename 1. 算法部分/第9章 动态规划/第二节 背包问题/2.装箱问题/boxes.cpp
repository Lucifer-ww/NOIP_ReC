#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
int f[50000],w[4000],i,j,n,m;;
int main ()
{
	cin>>m;
	cin>>n;
	for (i=1; i<=n; i++)
	  cin>>w[i];
	for (i=1; i<=n; i++)
	  for (j=m; j>=w[i]; j--)
	    f[j]=max(f[j-w[i]]+w[i],f[j]);
	cout<<m-f[m];
}

