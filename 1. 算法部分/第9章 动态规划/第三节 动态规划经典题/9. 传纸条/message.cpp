#include<stdio.h>
#include<string.h>
#include<math.h>
int a[60][60],sum[51][51][51][51];
int max(int x,int y)
{
	if(x>y) return x;
	else return y;
}
int min(int x,int y)
{
	if(x<y) return x;
	else return y;
}
main()
{
	int r,m,n,i,j,h,k,x,y,z;
	scanf("%d%d",&m,&n);
	memset(a,0,sizeof(a));
	memset(sum,0,sizeof(sum));
	for(i=1;i<=m;i++)
	  for(j=1;j<=n;j++)
	    scanf("%d",&a[i][j]);
	sum[1][1][1][1]=a[1][1];   
	for(r=3;r<=n+m;r++)  
	  for(i=1;i<=min(r-1,m);i++)
	    for(h=1;h<=min(r-1,m);h++)
	      if(i!=h||r==n+m)
	      { j=r-i; k=r-h;
		    sum[i][j][h][k]=max(sum[i][j][h][k],sum[i][j-1][h-1][k]);
			sum[i][j][h][k]=max(sum[i][j][h][k],sum[i-1][j][h-1][k]);
			sum[i][j][h][k]=max(sum[i][j][h][k],sum[i][j-1][h][k-1]);
			sum[i][j][h][k]=max(sum[i][j][h][k],sum[i-1][j][h][k-1]);
			sum[i][j][h][k]+=a[i][j]+a[h][k];}
	printf("%d",sum[m][n][m][n]-a[m][n]);
}
