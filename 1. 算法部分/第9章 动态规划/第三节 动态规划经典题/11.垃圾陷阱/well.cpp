#include<cstdio>
#include<cstring>
#include<cstdlib>
int g[101][4001];
int max(int x,int y)
{
	if (x>y) return x;
	else return y;
}
int main()
{
	int i,j,d,n,p,s=0,t[101],f[101],h[101];
	bool bo;
	scanf("%d%d",&d,&n);
	for(i=1;i<=n;i++)
	{
	  scanf("%d%d%d",&t[i],&f[i],&h[i]);
	  s=s+f[i];
    }
	for(i=1;i<=n-1;i++)
	  for(j=i+1;j<=n;j++)
	    if (t[i]>t[j])
	    {
		 p=t[i];t[i]=t[j];t[j]=p;
		 p=f[i];f[i]=f[j];f[j]=p;
		 p=h[i];h[i]=h[j];h[j]=p;
		}
	memset(g,-127,sizeof(g));
	g[0][10]=0;
	for(i=1;i<=n;i++)
	  for(j=10;j<=10+s;j++)
	  if (j>=t[i])
	  {g[i][j+f[i]]=max(g[i][j+f[i]],g[i-1][j]);
	   g[i][j]=max(g[i-1][j]+h[i],g[i][j]);}
	for(i=1;i<=n;i++)
	{
	 bo=false;
	 for(j=10;j<=10+s;j++)
	   if (g[i][j]>=d) 
	   {bo=true;break;}
	 if (bo)
	 {printf("%d",t[i]);exit(0);}
	}
	j=10;
	for(i=1;i<=n;i++)
	{
	 if (j<t[i]) {printf("%d",j);exit(0);}
	 j=j+f[i];
	}
	printf("%d",j);
}
