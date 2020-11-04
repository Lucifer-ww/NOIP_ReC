#include<cstdio>
int f[1001];

int search(int n)
{
	if (f[n]) return f[n];
	for (int i=0;i<=n/2;i++)
		f[n]=f[n]+search(i);
	return f[n];
}

int main(void)
{
	int n;
	scanf("%d",&n);
	f[0]=1;
	printf("%d\n",search(n));
	return 0;
}

