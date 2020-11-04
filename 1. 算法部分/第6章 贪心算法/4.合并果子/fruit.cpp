#include<cstdio>
int tot;
int tree[20001];
void up(int x)
{
	if (x==1) return;
	int y=x>>1;
	if (tree[x]<tree[y])
	{
		int tmp=tree[x];
		tree[x]=tree[y];
		tree[y]=tmp;
		up(y);
	}
}

void down(int x)
{
	int y=x<<1;
	if (y<tot&&tree[y]>tree[y+1]) y++;
	if (y<=tot&&tree[y]<tree[x])
	{
		int tmp=tree[x];
		tree[x]=tree[y];
		tree[y]=tmp;
		down(y);
	}
}

void maintain(void)
{
	tree[1]=tree[tot--];
	down(1);
}

int main(void)
{
	int n;
	scanf("%d",&n);
	int * p=n+tree;
	for (int * i=tree+1;i<=p;i++)
	{
		scanf("%d",i);
		up(++tot);
	}
	int ans=0;
	for (int i=1;i<n;i++)
	{
		ans+=tree[1];
		int tmp=tree[1];
		maintain();
		ans+=tree[1];
		tmp+=tree[1];
		maintain();
		tree[++tot]=tmp;
		up(tot);
	}
	printf("%d\n",ans);
	return 0;
}


