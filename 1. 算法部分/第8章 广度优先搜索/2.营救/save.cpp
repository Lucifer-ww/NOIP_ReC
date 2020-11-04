#include<stdio.h>
#include<string.h>

int BFS(int,int,int,int);

char map[1200][1200];
int qx[3010000],qy[3010000],step[3010000];

int main(void)
{
	int n,m,i,j,ans=0;
	memset(map,'1',sizeof(map));
	scanf("%d",&n);
	m=n;
	getchar();
	for (i=1;i<=n;i++)
	{
		for (j=1;j<=m;j++)
		{
			map[i][j]=getchar();
		}
		getchar();
	}
	int x1,x2,y1,y2;
	scanf("%d%d%d%d",&x1,&y1,&x2,&y2);
	printf("%d\n",BFS(x1,y1,x2,y2));
	return 0;
}


int BFS(int x,int y,int ex,int ey)
{
	if (x==ex&&y==ey) return 0;
	const int gx[4]={0,0,1,-1};
	const int gy[4]={1,-1,0,0};
	int head=1,tail=0,tx,ty,count=0;
	map[x][y]='1';
	qx[head]=x;
	qy[head]=y;
	step[head]=0;
	
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
				if (map[x][y]=='1') continue;
				map[x][y]='1';
				head++;
				qx[head]=x;
				qy[head]=y;
				step[head]=step[tail]+1;
				if (x==ex&&y==ey) return step[head];
			}
	}	
	return step[head];
}


