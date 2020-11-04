#include<cstdio>
int n,m,max;
int f[11][16],value[11][16];
void show(int i,int j)
{
	if (i==0) return;
	for (int k=0;k<=j;k++)
		if(max==f[i-1][k]+value[i][j-k])
		{
			max=f[i-1][k];
			show(i-1,k);
			printf("%d %d\n",i,j-k);
			return ;
		}
}
int main(void)
{
	scanf("%d%d",&n,&m);
	for (int i=1;i<=n;i++)
		for (int j=1;j<=m;j++)
			scanf("%d",&value[i][j]);
	for (int i=1;i<=n;i++)
		for (int j=1;j<=m;j++)
		{
			max=0;
			for (int k=0;k<=j;k++)
				if (f[i-1][k]+value[i][j-k]>max) max=f[i-1][k]+value[i][j-k];
			f[i][j]=max;
		}
	printf("%d\n",f[n][m]);
	show(n,m);
	return 0;
}
