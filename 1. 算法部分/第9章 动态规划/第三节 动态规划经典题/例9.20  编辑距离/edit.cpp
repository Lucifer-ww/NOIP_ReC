#include<cstdio>
#include<cstring>
#define min(a,b) ((a)<(b)?(a):(b))
char s1[2550],s2[2550];
int f[2002][2002];
int n,m;
int main(void)
{
	gets(s1+1);
	gets(s2+1);
	int l1=strlen(s1+1);
	int l2=strlen(s2+1);
	for (int i=1;i<=l2;i++) f[0][i]=i;
	for (int i=1;i<=l1;i++) f[i][0]=i;
	for (int i=1;i<=l1;i++)
		for (int j=1;j<=l2;j++)
			if (s1[i]==s2[j]) f[i][j]=f[i-1][j-1];
			else f[i][j]=min(min(f[i-1][j]+1,f[i][j-1]+1),f[i-1][j-1]+1);
	printf("%d\n",f[l1][l2]);
	return 0;
}
