#include<cstdio>
#include<cstdlib>
int a[10000],ans[10000],sum[10000],n,c;
void print(int n)
{
	for (int i=1;i<n;i++)
		printf("%d ",ans[i]);
	putchar('\n');
	exit(0);
}
void search(int x,int tot,int k)
{
	if (tot>c) return ;
	if (tot==c) print(k);
	if (tot+sum[x]<c) return ;
	for (int i=x;i<=n;i++)
	{
		ans[k]=a[i];
		search(i+1,tot+a[i],k+1);
	}
}
int main(void)
{
	scanf("%d%d",&n,&c);
	for (int i=1;i<=n;i++)
		scanf("%d",&a[i]);
	for (int i=n;i>0;i--)
		sum[i]=sum[i+1]+a[i];
	if (sum[1]>=c) search(1,0,1);	
	puts("No Solution!");
	return 0;
}
