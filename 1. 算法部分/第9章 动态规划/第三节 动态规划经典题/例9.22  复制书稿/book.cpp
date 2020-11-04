#include<cstdio>
#include<cstring>
int a[501],d[501];
int f[501][501];
int k,m;
int max(int a,int b)
{
	return a>b?a:b;
}
int min(int a,int b)
{
	return a<b?a:b;
}
void print(int i,int j)
{
	if (j==0) return;
	if (j==1) 
	{
		printf("1 %d\n",i);
		return;
	}
	int t=i,x=a[i];
	while (x+a[t-1]<=f[k][m])
	{
		x+=a[--t];
	}
	print(t-1,j-1);
	printf("%d %d\n",t,i);
}

int main(void)
{
	scanf("%d%d",&m,&k);
	memset(f,0x3f,sizeof(f));
	for (int j=1;j<=m;j++)
	{
		scanf("%d",&a[j]);
		d[j]=d[j-1]+a[j];
		f[1][j]=d[j];
	}
	for (int i=2;i<=k;i++)
		for (int j=1;j<=m;j++)
			for (int l=1;l<j;l++)
				f[i][j]=min(f[i][j],max(f[i-1][l],d[j]-d[l]));
	print(m,k);
	return 0;
}

