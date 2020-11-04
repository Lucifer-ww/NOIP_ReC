#include<cstdio>
#include<iostream>
#include<cstdlib>
using namespace std;
long n,m,i,x,k,w[10001],c[10001],f[10001];
int main()
{
	f[0]=0;
	cin>>m>>n;
	for (i=1; i<=n; i++) cin>>c[i]>>w[i];
	
	for (i=1; i<=n; i++)
	  for (x=w[i]; x<=m; x++)
             if (f[x-w[i]]+c[i]>f[x]) f[x]=f[x-w[i]]+c[i];
	cout<<f[m];
}
