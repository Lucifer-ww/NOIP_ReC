#include<cstdio>
#include<iostream>
#include<cstdlib>
using namespace std;
long n,m,i,j,k,w[30001],c[30001],f[30000],a[30000];
int main()
{
	for(i=1; i<=201; i++) f[i]=0;
	cin>>n>>m;
	for (i=1; i<=m; i++) {
	   cin>>w[i]>>c[i]; a[i]=w[i]*c[i]; }
	for (i=1; i<=m; i++)
	  for (j=n; j>=w[i]; j--)
	    f[j]=max(f[j-w[i]]+a[i],f[j]); 
	cout<<f[n];
}
