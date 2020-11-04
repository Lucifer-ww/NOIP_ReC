#include<cstdio>
#include<cstring>
const int dx[4]={-1,0,1,0};
const int dy[4]={0,-1,0,1};
int m[102][102];
int f[102][102];
int r,c;
int search(int x,int y)
{
	if (f[x][y]) return f[x][y];
	int t=1;
	for (int i=0;i<4;i++)
	{
		int nx=x+dx[i];
		int ny=y+dy[i];
		if (m[x][y]<m[nx][ny])
		{
			int tmp=search(nx,ny)+1;
			if (tmp>t) t=tmp;
		}
	}
	f[x][y]=t;
	return t;
}
int main(void)
{
	memset(m,0xff,sizeof(m));
	scanf("%d%d",&r,&c);
	for (int i=1;i<=r;i++)
		for (int j=1;j<=c;j++)
			scanf("%d",&m[i][j]);
	int ans=0;
	for (int i=1;i<=r;i++)
		for (int j=1;j<=c;j++)
		{
			f[i][j]=search(i,j);
			ans=f[i][j]>ans?f[i][j]:ans;
		}
	printf("%d\n",ans);
	return 0;
}

