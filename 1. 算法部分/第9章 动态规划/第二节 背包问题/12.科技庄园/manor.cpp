#include <iostream>
using namespace std;
#include <cstdio>
#include <cstring>
#include <cmath>

int ts[101][101],k[101][101];
int we[1000001],va[1000001];
int f[101];
int tot,ans;

int main()
{
	memset(f,0xaf,sizeof(f));
	f[0]=0;
	int n,m,ti,a;
	cin>>n>>m>>ti>>a;
	for (int i=1; i<=n; i++)
	{
		for (int j=1; j<=m; j++)
		{
			cin>>ts[i][j];
		}
	}
	
	for (int i=1; i<=n; i++)
	{
		for (int j=1; j<=m; j++)
		{
			cin>>k[i][j];
			if (ts[i][j]>0)
			{
				for (int p=tot+1; p<=tot+k[i][j]; p++)
				{
					we[p]=(i+j)*2;
					va[p]=ts[i][j];
				}
				
			}
			tot+=k[i][j];
		}
	}
	
	for (int i=1; i<=tot; i++)
	  for (int v=min(ti,a-1); v>=0; v--)
	  {
	  	  if (v-we[i]<0) break;
		  f[v]=max(f[v],f[v-we[i]]+va[i]);
		  ans=max(ans,f[v]);
	  }
	
	cout<<ans;
}

