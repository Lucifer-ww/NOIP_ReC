#include<cstdio>
#include<cstdlib>
#include<cstring>
#define MAXN 1000
int f[MAXN],g[MAXN];
int a[MAXN];
int n,k,ans;
int cmp(const void * a,const void * b)
{
	return *(int *)a-*(int *)b;
}
int sqr(int x)
{
	return x*x;
}
int min(int a,int b)
{
	return a<b?a:b;
}
int main(void)
{
	scanf("%d%d",&n,&k);
	for (int i=1;i<=n;i++)
		scanf(" %d",&a[i]);
	qsort(a+1,n,sizeof(int),cmp);

	if (n-6<k*2)
	{
		printf("%d\n",-1);
		return 0;
	}
	for (int i=1;i<=k+3;i++)
	{
		for (int j=n;j>=(i*2);j--)
		{
			f[j]=0x7fffffff;
			for (int k=(i*2-2);k<j-1;k++)
				f[j]=min(f[j],f[k]+sqr(a[j]-a[j-1]));
		}
	}

	ans=0x7fffffff;
	for (int i=(k+3)*2;i<=n;i++)
		ans=min(ans,f[i]);
	printf("%d\n",ans);
	return 0;
}

