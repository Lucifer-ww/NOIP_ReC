#include<cstdio>
#define MAXN 5001
#define MAXM 51
int a[MAXM],f[MAXN];
int n;
int main(void)
{
	scanf("%d",&n);
	for (int i=0;i<n;i++)
		scanf("%d",&a[i]);
	int sum=0;
	f[0]=1;
	for (int i=0;i<n;i++)
	{
		sum+=a[i];
		for (int j=sum;j>=a[i];j--)
			f[j]+=f[j-a[i]];
	}
	if (sum%2==1) puts("0");
	else printf("%d\n",f[sum/2]/2);
	return 0;
}

