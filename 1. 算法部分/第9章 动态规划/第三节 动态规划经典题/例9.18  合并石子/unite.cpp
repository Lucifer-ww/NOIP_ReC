#include<cstdio>
#include<cstring>
#define min(a,b) ((a)<(b)?(a):(b))
int f[101][101];
int a[101],s[101];
int n;
int main(void)
{
	scanf("%d",&n);
	for (int i=1;i<=n;i++)
		scanf("%d",&a[i]);
	for (int i=1;i<=n;i++)
		s[i]=s[i-1]+a[i];
	memset(f,0x3f,sizeof(f));
	for (int i=1;i<=n;i++)
		f[i][i]=0;
	for (int i=n;i>=1;i--)
		for (int j=i+1;j<=n;j++)
			for (int k=i;k<=j-1;k++)
				f[i][j]=min(f[i][j],f[i][k]+f[k+1][j]+s[j]-s[i-1]);
	printf("%d\n",f[1][n]);
	return 0;
}


