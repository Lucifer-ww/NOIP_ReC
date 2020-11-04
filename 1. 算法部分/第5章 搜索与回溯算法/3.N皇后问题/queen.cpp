#include<cstdio>
int crax[20],cray[20],cx[20];
int ans[20];
int n,tot;

void print(void)
{
	tot++;
	for (int i=1;i<=n;i++)
		printf("%d ",ans[i]);
	putchar('\n');
}

void search(int x)
{
	if (x>n) print();
	for (int y=1;y<=n;y++)
	{
		if (crax[x+y]) continue;
		if (cray[x-y+10]) continue;
		if (cx[y]) continue;
		ans[x]=y;
		crax[x+y]=1;
		cray[x-y+10]=1;
		cx[y]=1;
		search(x+1);
		crax[x+y]=0;
		cray[x-y+10]=0;
		cx[y]=0;
	}
}

int main(void)
{
	scanf("%d",&n);
	search(1);
	if (tot==0) puts("no solute!");
	return 0;
}

