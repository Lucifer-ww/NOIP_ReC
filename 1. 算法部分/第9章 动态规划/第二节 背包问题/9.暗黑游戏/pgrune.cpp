#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
int w[5000],c[5000],p[5000],f[5000][5000],g[5000];
int main ()
{
	int n,m,l;
	cin>>n>>m>>l;
	for (int i=1; i<=n; i++)
	  cin>>w[i]>>g[i]>>p[i]>>c[i];
	for (int i=1; i<=n; i++)
	if (p[i]==0)
	{
		for (int j=w[i]; j<=m; j++)
		  for (int o=g[i]; o<=l; o++)
	       f[j][o]=max(f[j][o],f[j-w[i]][o-g[i]]+c[i]);
	}
	else 
	{
		for (int j=1; j<=p[i]; j++)
		  for (int k=m; k>=w[i]; k--)
		    for (int o=l; o>=g[i]; o--)
		    f[k][o]=max(f[k][o],f[k-w[i]][o-g[i]]+c[i]);
	}
	cout<<f[m][l];
}
