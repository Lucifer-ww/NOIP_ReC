#include<iostream>
#include<cstring>
using namespace std;
int n,m,s,a[300][300];
bool b[300],d[300];

void go(int x,int y)
{
	if (y+n-x+1<=s) return;
	if (x>n)
	{
		if (y>s) 
		{   
			int j;
			s=y;
			for (j=1;j<=n;j++) d[j]=b[j];
		}
		return;
		}
	if (!b[x]) 
	{
		go(x+1,y);
		return;
		}
	int i,t,c[300];
	t=0;
	for (i=1;i<=a[x][0];i++)
	if (b[a[x][i]])
	{
		c[++t]=a[x][i];
		b[a[x][i]]=false;
		}
	go(x+1,y+1);
	for (i=1;i<=t;i++) b[c[i]]=true;
	b[x]=false;
	go(x+1,y);
	b[x]=true;
}
int main()
{
	cin>>n>>m;
	int i,x,y;
	for (i=1;i<=m;i++)
	{
		cin>>x>>y;
		if (x<y) a[x][++a[x][0]]=y;
		else a[y][++a[y][0]]=x;
		}
	s=0;
	memset(b,1,sizeof(b));
	go(1,0);
	cout<<s<<endl;
	for (i=1;i<=n;i++) cout<<(d[i]==1)<<' ';
	cout<<endl;
	return 0;
}
