#include<iostream>
#include<cstdio>
#include<cmath>
#include<cstring>
using namespace std;
int a[10000],b[10000],c[10000],f[5000][5000];
int main ()
{
	int i,j,n,m,k,t,s,l,ma;
	cin>>n>>m;
	cin>>k;
	for (i=1; i<=k; i++)
	cin>>c[i]>>a[i]>>b[i];
	for (l=1; l<=k; l++)
	  for (i=n; i>=a[l]; i--)
	    for (j=m; j>=b[l]; j--)
	      f[i][j]=max(f[i][j],f[i-a[l]][j-b[l]]+c[l]);
	cout<<f[n][m];
}
