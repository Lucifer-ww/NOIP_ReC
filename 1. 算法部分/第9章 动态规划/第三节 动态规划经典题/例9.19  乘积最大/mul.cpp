#include<cstdio>
#include<cstring>
#include<cstdlib>
#define max(a,b) ((a)>(b)?(a):(b))
int f[41][7],a[41][41];
int n,r;
char s1[255],s2[255];
int main(void)
{
	scanf("%d%d ",&n,&r);
	gets(s1);
	for (int i=0;i<n;i++)
		for (int j=i;j<n;j++)
		{
			strncpy(s2,s1+i,j-i+1);
			s2[j-i+1]='\0';
			a[i+1][j+1]=atoi(s2);
		}
	for (int i=1;i<=n;i++)
		f[i][0]=a[1][i];
	for (int k=1;k<=r;k++)
		for (int i=k+1;i<=n;i++)
			for (int j=k;j<=i;j++)
				f[i][k]=max(f[i][k],f[j][k-1]*a[j+1][i]);
	printf("%d\n",f[n][r]);
	return 0;
}
