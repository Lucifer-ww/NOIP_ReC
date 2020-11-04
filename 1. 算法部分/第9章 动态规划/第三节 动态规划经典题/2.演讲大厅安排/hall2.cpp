#include<cstdio>
#define MAXN 100000
int next[MAXN],bgn[MAXN],first[MAXN],f[MAXN];
int ans,maxn,tot;
int max(int a,int b)
{
	return a>b?a:b;
}
void add_edge(int a,int b)
{
	tot++;
	next[tot]=first[a];
	first[a]=tot;
	bgn[tot]=b;
}
int main(void)
{
	int n;
	scanf("%d",&n);
	for (int i=0;i<n;i++)
	{
		int a,b;
		scanf("%d%d",&a,&b);
		add_edge(b,a);
		maxn=max(maxn,b);
	}
	for (int i=1;i<=maxn;i++)
	{
		f[i]=f[i-1];
		int k=first[i];
		while (k)
		{
			f[i]=max(f[i],f[bgn[k]]+i-bgn[k]);
			k=next[k];
		}
	}
	printf("%d\n",f[maxn]);
	return 0;
}

