#include<cstdio>
#include<cstring>
char s[255];
int sl;
char word[101][255];
int l[101];
int f[256];
int min(int a,int b)
{
	return a<b?a:b;
}
int ok(int x,int y)
{
	for (int i=0;i<l[y];i++)
		if (s[x+i]!=word[y][i]) return 0;
	return 1;
}
int main(void)
{
	int n;
	gets(s);
	sl=strlen(s);
	scanf("%d ",&n);
	for (int i=0;i<n;i++)
	{
		gets(word[i]);
		l[i]=strlen(word[i]);
	}
	memset(f,0x3f,sizeof(f));
	f[0]=0;
	for (int i=0;i<sl;i++)
	{
		for (int j=0;j<n;j++)
			if (i+1>=l[j])
				if (ok(i-l[j]+1,j))
					f[i+1]=min(f[i+1],f[i-l[j]+1]+1);
		//printf("f[%d]=%d\n",i+1,f[i+1]);
	}
	printf("%d\n",f[sl]);
	return 0;
}

