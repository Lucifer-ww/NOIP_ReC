#include<iostream>
#include<cstring>
using namespace std;
int n,m,k,s,ks[10000],next[10000],e[10000],a[10000];

void go(int x)
{
	 if (x>n)
	 {
		s++;
		return;
	  }
	int i;
	bool b[1000];
	i=ks[x];
	memset(b,1,sizeof(b));
	while (i!=0)
	{
		if (e[i]<x) b[a[e[i]]]=false;
		i=next[i];
				}
	for (i=1;i<=k;i++)
	if (b[i])
	{
		a[x]=i;
		go(x+1);
		}
}
int main()
{
	cin>>n>>m>>k;
	int i,x,y;
	for (i=1;i<=m;i++)
	{
		cin>>x>>y;
		next[i]=ks[x]; ks[x]=i; e[i]=y;
		next[i+m]=ks[y]; ks[y]=i+m; e[i+m]=x;
		}
	s=0;
	go(1);
	cout<<s<<endl;
	return 0;
}