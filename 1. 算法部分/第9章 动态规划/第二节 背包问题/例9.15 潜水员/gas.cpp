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
	memset(f,1000001,sizeof(f));
	f[0][0]=0;
	for (i=1; i<=k; i++)
	cin>>a[i]>>b[i]>>c[i];
	for (i=1; i<=k; i++)
	  for (j=n; j>=0; j--)
	    for (l=m; l>=0; l--)
	    {
		  t=j+a[i]; s=l+b[i];
		  t=min(n,t); s=min(m,s);	
		  if (f[t][s]>f[j][l]+c[i]) f[t][s]=f[j][l]+c[i];
		}
	cout<<f[n][m];
}
