#include<cstdio>
#include<climits>
#include<cstring>
int n,k,a[101],f[1001],ans;
int max(int x,int y)
{
	if (x>y) return x;
	else return y;
}
void find(int x,int y)
{
	int i;
	if (y>=ans) return;
	if (x>n)
	{
	 if (y<ans) ans=y;
	 return;
	}
	for(i=1;i<=k;i++)
	{
	 f[i]=f[i]+a[x];
	 find(x+1,max(y,f[i]));
	 f[i]=f[i]-a[x];
	}
}
int main()
{
	int i;
	scanf("%d%d",&n,&k);
	for(i=1;i<=n;i++)
	  scanf("%d",&a[i]);
	memset(f,0,sizeof(f));
	ans=INT_MAX;
	find(1,0);
	printf("%d",ans);
}
