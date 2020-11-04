#include<cstdio>
int main(void)
{
	int n,I,ans=1;
	scanf("%d%d",&n,&I);
	int max=1<<n-1;
	while (ans<max)
	{
		if (I%2==1) {
			I=I/2+1;
			ans=ans*2;
		} else {
			I=I/2;
			ans=ans*2+1;
		}
	}
	printf("%d\n",ans);
	return 0;
}

