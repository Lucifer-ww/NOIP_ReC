#include<stdio.h>
#include<string.h>

#define MaxN 1000000

const int gx[4]={0,0,1,-1};
const int gy[4]={1,-1,0,0};

int BFS_IAA_(int,int);

char map[1000][1000];
int qx[MaxN],qy[MaxN];


int main(void)
{
	int n,m,ans=0;
	scanf("%d%d\n",&n,&m);
	memset(map,'0',sizeof(map));
	for(int i=1;i<=n;i++)
		{
			for(int j=1;j<=m;j++)
				map[i][j]=getchar();
			getchar();
		}
	for(int i=1;i<=n;i++)
		for(int j=1;j<=m;j++)
			if (map[i][j]!='0')
				{
					BFS_IAA_(i,j);
					ans++;
				}
	printf("%d\n",ans);
	return 0;
}

int BFS_IAA_(int x,int y)
{
	int head=1,tail=0,tx,ty,count=0;
	map[x][y]='0';
	qx[head]=x;
	qy[head]=y;
	
	do
	{
		count++;
		tail++;
		tx=qx[tail];
		ty=qy[tail];
		for (int i=0;i<4;i++)
			{
				x=tx+gx[i];
				y=ty+gy[i];
				if ('0'==map[x][y]) continue;
				map[x][y]='0';
				head++;
				qx[head]=x;
				qy[head]=y;
			}
	}	
	while(head!=tail);
	return count;
}
