#include <iostream>
using namespace std;
#include <cstdio>
#include <cstring>

int c[101],p[101],w[101][51];
int f[101][51][501],prev[101][51][501],prem[101][51][501];
int av,am=2147438647;
int v[101];
int n,m;

void get_av()
{
	int tot=n;
	while (tot>0)
	{
		v[tot]=av;
		int bv=av,bm=am;
		av=prev[tot][bv][bm];
		am=prem[tot][bv][bm];
		tot--;
	}
}

void print_av()
{
	for (int i=1; i<=n; i++)  cout<<v[i]<<"\n";
}

int main()
{
	cin>>n>>m;
	for (int i=1; i<=n; i++)
	{
		cin>>c[i]>>p[i];
		for (int j=1; j<=p[i]; j++) cin>>w[i][j];
	}
	
	memset(f,0xaf,sizeof(f));
	int ans=f[0][0][0]/2;
	for (int k=0; k<=m; k++) f[0][0][k]=0;
	for (int i=1; i<=n; i++)
	{
		for (int j=0; j<=p[i]; j++)
		{
			for (int k=m; k>=0; k--)
			{
				if ((k-c[i]>=0)&&(f[i][j][k]<f[i][j-1][k-c[i]]))
				{
					f[i][j][k]=f[i][j-1][k-c[i]];
					prev[i][j][k]=prev[i][j-1][k-c[i]];
					prem[i][j][k]=prem[i][j-1][k-c[i]];
				}
				for (int l=0; l<=p[i-1]; l++)
				  if ((k-c[i]*j>=0)&&(f[i][j][k]<f[i-1][l][k-c[i]*j]+w[i][j]))
				  {
				  	f[i][j][k]=f[i-1][l][k-c[i]*j]+w[i][j];
					prev[i][j][k]=l;
					prem[i][j][k]=k-c[i]*j;
				  }
				if (f[i][j][k]!=0&&k!=0&&i==n)
				  if ((f[i][j][k]>ans)||((f[i][j][k]==ans)&&(k<am)))
				    {
					  ans=f[i][j][k];
					  av=j;
					  am=k;
				    }
			}
		}
	}
	cout<<ans<<"\n";
	get_av();
	print_av();
}
