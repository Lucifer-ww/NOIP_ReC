#include<cstdio>
#define MAXN 10001
#define MAXM 16
int n,k;
int exist[MAXN];
int que[MAXN];
int a[MAXM],b[MAXM];
int main(void)
{
	scanf("%d",&n);
	scanf("%d",&k);
	for (int i=0;i<k;i++)
		scanf("%d%d",&a[i],&b[i]);
	exist[n]=1;
	que[1]=n;
	int head=1;
	for (int tail=0;head>=tail;)
	{
		int x=que[++tail];
		int y=x,mod=1;
		while (x>0)
		{
			int tmp=x%10;
			x/=10;
			for (int i=0;i<k;i++)
				if (a[i]==tmp)
				{
					int p=y+(b[i]-tmp)*mod;
					if (exist[p]==0)
					{
						exist[p]=1;
						que[++head]=p;
					}
				}
			mod*=10;
		}
	}
	printf("%d\n",head);
	return 0;
}

