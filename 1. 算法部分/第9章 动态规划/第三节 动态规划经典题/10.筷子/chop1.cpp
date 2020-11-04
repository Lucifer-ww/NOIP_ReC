#include<cstdio>
#include<cstring>
int min(int x,int y)
{
	if (x<y)return x;
	else return y;
}
int main()
{
	int a[101],f[101][101];
	int k,i,j,n,t;
	scanf("%d%d",&n,&k);
	k=k+3;
	for (i=1;i<=n;i++) scanf("%d",&a[i]);
	for (i=1;i<=n-1;i++)
	for(j=i+1;j<=n;j++)
	if (a[i]>a[j]) {t=a[i];a[i]=a[j];a[j]=t;}
	if (k*2>n) printf("-1");
	else
	{for(i=0;i<=n;i++)
	{f[i][0]=0;
	for (j=1;j<=k;j++)f[i][j]=99999999;}
	for (i=2;i<=n;i++)
	for (j=1;j<=k;j++)f[i][j]=min(f[i-2][j-1]+(a[i]-a[i-1])*(a[i]-a[i-1]),f[i-1][j]);
	printf("%d",f[n][k]);}
}
