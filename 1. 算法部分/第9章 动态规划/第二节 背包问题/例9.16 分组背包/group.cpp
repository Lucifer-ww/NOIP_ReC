#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
int f[5000],c[5000],w[5000],a[5000][5000],i,j,n,m,s,k,t,p;
int main ()
{
	cin>>n>>m>>t;
	for (i=1; i<=m; i++)
	  {
			cin>>w[i];
			cin>>c[i];
			cin>>p;
			a[p][0]++;
			a[p][a[p][0]]=i;
	  }
	for (k=1; k<=t; k++)  
	  for (i=n; i>=0; i--)
	    for (j=1; j<=a[k][0]; j++)
	      if (i>=w[a[k][j]])
	        f[i]=max(f[i],f[i-w[a[k][j]]]+c[a[k][j]]);
	cout<<f[n];
}
