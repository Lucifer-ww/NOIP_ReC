#include <iostream>
using namespace std;
#include <cstdio>
#include <cstring>

bool tree[2097152];
int last,sd;
int d,I;

void work(int x)
{
	sd++;
	if (tree[x])
	{
		tree[x]=false;
		if (sd==d)
		{
			last=x;
			return;
		}
		work(x*2+1);
	}
	else
	{
		tree[x]=true;
		if (sd==d)
		{
			last=x;
			return;
		}
		work(x*2);
	}
}

int main()
{
	memset(tree,false,sizeof(tree));
	cin>>d>>I;
	for (int i=1; i<=I; i++) 
	{
		sd=0;
	    work(1);
	}
	cout<<last;
}

