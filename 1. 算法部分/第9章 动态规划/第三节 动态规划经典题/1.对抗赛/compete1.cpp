#include<cstdio>
#include<cstring>
int f[51][5001];
int main()
{
	int n,i,a[51],t=0,j;
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
	 scanf("%d",&a[i]);
	 t=t+a[i];
    }
	if (t%2!=0) printf("0");
	else
	{
		memset(f,0,sizeof(f));
		f[0][0]=1;
		for(i=1;i<=n;i++)
		 for(j=0;j<=t/2;j++)
		 {
		   f[i][j]=f[i-1][j];
		   if (j-a[i]>=0) f[i][j]=f[i][j]+f[i-1][j-a[i]];
		 }
		 printf("%d",f[n][t/2]/2);
	}
}
