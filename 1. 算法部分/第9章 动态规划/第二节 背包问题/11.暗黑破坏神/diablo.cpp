#include<cstdio>
#include<cstring>
int n,m,i,j,k,w[1001][1001],c[1001],p[1001];
long long ans,f[1001][1001];
int max(int x,int y)
{
	if (x>y) return x;
	else return y;
}
void find(int i,int j)
{
	int k;
	if (i==0) return;
	for(k=0;k<=p[i];k++)
	  if (j-c[i]*k>=0)
	   if (f[i-1][j-c[i]*k]+w[i][k]==f[i][j])
	   {
		find(i-1,j-c[i]*k);
		printf("%d\n",k);
		return;
	   }
	  
}
int main()
{
	scanf("%d%d",&n,&m);
	for(i=1;i<=n;i++)
	{
	 scanf("%d%d",&c[i],&p[i]);
	 w[i][0]=0;
	 for(j=1;j<=p[i];j++)
	  scanf("%d",&w[i][j]);
	}
	memset(f,-127/2,sizeof(f));
	f[0][0]=0;
	for(i=1;i<=n;i++)
	  for (j=0;j<=m;j++)
	  {
		f[i][j]=max(f[i][j],f[i-1][j]);
	    for(k=1;k<=p[i];k++)
	      if (j-k*c[i]>=0) 
	        f[i][j]=max(f[i-1][j-k*c[i]]+w[i][k],f[i][j]);
	  }
	ans=0;
	k=0;
	for(i=0;i<=m;i++)
	  if (f[n][i]>ans) 
	  {ans=f[n][i];k=i;}
	printf("%I64d\n",ans);
	find(n,k);
}
