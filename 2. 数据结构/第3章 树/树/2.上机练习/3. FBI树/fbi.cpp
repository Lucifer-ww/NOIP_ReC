#include<cstdio>
char tree[10001];
char inp[10001];
int n;
void dfs(int x)
{
	if (x>=(1<<n)) 
	{
		//putchar(inp[x]);
		if (inp[x]=='1')
			tree[x]='I';
		else
			tree[x]='B';
		putchar(tree[x]);
		return ;
	}
	dfs(x*2);
	dfs(x*2+1);
	if (tree[x*2]==tree[x*2+1])
		tree[x]=tree[x*2];
	else 	
		tree[x]='F';
	putchar(tree[x]);
	return ;
}
int main(void)
{
	scanf("%d ",&n);
	for (int i=1<<n;i<1<<(n+1);i++)
		inp[i]=getchar();
	dfs(1);
	putchar('\n');
	return 0;
}

