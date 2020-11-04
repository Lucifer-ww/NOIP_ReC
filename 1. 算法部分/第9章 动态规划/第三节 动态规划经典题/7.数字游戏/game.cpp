#include<cstdio>
#include<climits>
#include<cstring>
int f[101][11],g[101][11],a[101],b[101];
int max(int x,int y)
{
	if (x<y) return(y);
	else return(x);
}
int min(int x,int y)
{
	if (x<y) return(x);
	else return(y);
}
int main()
{
	int n,m,i,j,k,p,sum[101],ans2,ans1;
	scanf("%d",&n);
	scanf("%d",&m);
	for(i=1;i<=n;i++) scanf("%d",&a[i]);
	ans1=-100000;
	ans2=100000;
	for(p=1;p<=n;p++)
	{
	 sum[0]=0;
	 for(i=1;i<=n;i++) sum[i]=sum[i-1]+a[i];
	 memset(g,127,sizeof(g));
	 memset(f,-127,sizeof(f));
	 f[0][0]=1;
	 g[0][0]=1;
	 for(i=1;i<=n;i++)
	   for(k=1;k<=m;k++)
	   for(j=0;j<=i-1;j++)
	   if (j>=k-1&&i>=k)
	     {
			f[i][k]=max(f[j][k-1]*(((sum[i]-sum[j])%10+10)%10),f[i][k]);
			g[i][k]=min(g[j][k-1]*(((sum[i]-sum[j])%10+10)%10),g[i][k]);
		 }
	 if (f[n][m]>ans1) ans1=f[n][m];
	 if (g[n][m]<ans2) ans2=g[n][m];
	 for(i=1;i<=n;i++) b[i]=a[i];
	 for(i=1;i<=n-1;i++)
	  a[i]=b[i+1];
	 a[n]=b[1];
	}
	printf("%d\n",ans2);
	printf("%d\n",ans1);
}

