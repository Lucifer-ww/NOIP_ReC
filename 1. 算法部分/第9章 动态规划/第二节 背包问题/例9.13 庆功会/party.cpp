#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
int v[10000],w[10000],s[10000],f[10000],n,m,i,j,k;
int main  ()
{
	cin>>n>>m;
	for (i=1; i<=n; i++)
	  cin>>v[i]>>w[i]>>s[i];
	for (i=1; i<=n; i++)
	  for (j=m; j>=0; j--)
	    for (k=1; k<=s[i]; k++)
	    {
			if (j-k*v[i]<0) break;
			f[j]=max(f[j-k*v[i]]+w[i]*k,f[j]);
		}
	cout<<f[m];
}
