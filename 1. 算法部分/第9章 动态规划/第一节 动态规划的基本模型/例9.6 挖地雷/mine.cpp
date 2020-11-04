#include<cstdio>
#include<cstring>
int first[201],a[201],f[201];
int endl[200001],next[200001];
int tot,ans;

void add_edge(int a,int b)
{
	next[++tot]=first[a];
	first[a]=tot;
	endl[tot]=b;
}

int max(int a,int b)
{
	return a>b?a:b;
}

int dfs(int x)
{
	if (f[x]>=0) return f[x];
	int i=first[x];
	f[x]=0;
	while (i)
	{
		int en=endl[i];
		f[x]=max(f[x],dfs(en));
		i=next[i];
	}
	f[x]+=a[x];
	return f[x];
}

void print(int x)
{
	if (f[x]==a[x])
	{
		printf("%d\n",x);
		return ;
	}
	printf("%d-",x);
	f[x]-=a[x];
	int i=first[x];
	while (i)
	{
		int en=endl[i];
		if (f[en]==f[x]) 
		{
			print(en);
			return ;
		}
		i=next[i];
	}
}

int main(void)
{
	int n;
	scanf("%d",&n);
	for (int i=1;i<=n;i++)
		scanf("%d",&a[i]);
	for (;;)
	{
		int a,b;
		scanf("%d%d",&a,&b);
		if (a==0&&b==0) break;
		add_edge(a,b);
	}
	memset(f,255,sizeof(f));
	for (int i=1;i<=n;i++)
	{
		ans=max(ans,dfs(i));
	}
	for (int i=1;i<=n;i++)
		if (f[i]==ans)
		{
			print(i);
			break;
		}
	printf("%d\n",ans);
	return 0;
}

