#include<stdio.h>
#include<string.h>

#define MAXN 10
#define MAXM 10

int BFS_II_I(int,int);

int map[12][12],qx[200],qy[200];

int main(void)
{
	int i,j,ans=0;
	memset(map,255,sizeof(map));
	for (i=1;i<=MAXN;i++)
	{
		for (j=1;j<=MAXM;j++)
		{
			scanf("%d",&map[i][j]);
			map[i][j]=-map[i][j];
		}
	}
	for (i=1;i<=MAXN;i++)
	{
		if (0==map[i][1]) BFS_II_I(i,1);
		if (0==map[i][MAXM]) BFS_II_I(i,MAXM);
		if (0==map[1][i]) BFS_II_I(1,i);
		if (0==map[MAXM][i]) BFS_II_I(MAXM,i);
	}
	for (i=1;i<=MAXN;i++)
		for (j=1;j<=MAXM;j++)
			if (0==map[i][j]) ans++;
fprintf(stderr,"%d\n",ans);

	printf("%d\n",ans);
	return 0;
}


int BFS_II_I(int x,int y)
{
	const int gx[4]={0,0,1,-1};
	const int gy[4]={1,-1,0,0};
	int head=1,tail=0,tx,ty,count=0;
	map[x][y]=-1;
	qx[head]=x;
	qy[head]=y;
	
	for(;head!=tail;)
	{
		count++;
		tail++;
		tx=qx[tail];
		ty=qy[tail];
		for (int i=0;i<4;i++)
			{
				x=tx+gx[i];
				y=ty+gy[i];
				if (-1==map[x][y]) continue;
				map[x][y]=-1;
				head++;
				qx[head]=x;
				qy[head]=y;
			}
	}	
	return count;
}
