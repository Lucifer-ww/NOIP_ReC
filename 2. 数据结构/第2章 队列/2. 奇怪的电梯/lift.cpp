#include <iostream>
using namespace std;
#include <cstdio>
#include <cstring>
#include <cmath>
int n,a,b,t;
int ans=0x7f;
int edge[201][201];
int f[201][201];

int main()
{
	cin>>n>>a>>b;
	memset(edge,0x7f/2,sizeof(edge));
	memset(f,0x7f/2,sizeof(f));
	for (int i=1; i<=n; i++) 
	{
		f[i][i]=0;
	 	cin>>t;
	 	if (i+t<=n)
		{
			edge[i][i+t]=1;
	 		f[i][i+t]=edge[i][i+t];
	 	}
		if (i-t>=1)
		{
			edge[i][i-t]=1;
	 		f[i][i-t]=edge[i][i-t];
	 	}
	}
	for (int k=1; k<=n; k++)
	  for (int i=1; i<=n; i++)
	    if (i!=k)
	      for (int j=1; j<=n; j++)
	        if (i!=j&&j!=k)
	        {
	        	f[i][j]=min(f[i][j],f[i][k]+f[k][j]);
			}
	if (f[a][b]!=f[0][0]) cout<<f[a][b];
	else cout<<-1;
}

