#include<cstdio>
#include<cstring>
#define fr(i,n) for(int i=1;i<=n;i++)
int n,x,y,z;
int a[51][51];
int sum[51][51][51][51];
int max(int a,int b) 
{
	return a>b?a:b;
}
int main(void)
{
	scanf("%d",&n);
	while (scanf("%d%d%d",&x,&y,&z)) 
	{
		if (x+y==0&&z==0) break;
		a[x][y]=z;
	}
	fr(i,n)
		fr(j,n)
			fr(h,n)
				fr(k,n)
				{
					sum[i][j][h][k]=max(max(sum[i-1][j][h-1][k],sum[i][j-1][h][k-1]),
							    max(sum[i-1][j][h][k-1],sum[i][j-1][h-1][k]))+a[i][j];
					if (i!=h&&j!=k)
						sum[i][j][h][k]+=a[h][k];
				}
	printf("%d\n",sum[n][n][n][n]);
	return 0;
}

