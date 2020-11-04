#include<iostream>
#include<cstring>
using namespace std;
int n,a[30][30],mi;
bool b[30];

void go(int x,int s)
{
	if (s>=mi) return;
	if (x>n)
	{
		mi=s;
		return;
	}
	int i;
	for (i=1;i<=n;i++)
	if (!b[i])
	{
		b[i]=true;
		go(x+1,s+a[i][x]);
		b[i]=false;
	}
}
int main()
{
	int i,j;
	cin>>n;
	for (i=1;i<=n;i++)
	  for (j=1;j<=n;j++)
	  cin>>a[i][j];
	mi=999999999;
	memset(b,0,sizeof(b));
	go(1,0);
	cout<<mi<<endl;
	return 0;
}