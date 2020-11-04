#include<iostream>
#include<algorithm>
#include<cstdio>
#include<cstring>
using namespace std;
string s;
int i,a[1000],l[1000],r[1000];
void build(int k)
{
	i++;
	if (l[k]==0)
	  l[k]=i;
	else
	  r[k]=i;
	int m;
	m=i;
	if (s[i-1]!='.')
	{
		build(m);
		build(m);
	}
}
void printzx(int k)
{
	if (s[k-1]=='.') return;
	else
	{
		printzx(l[k]);
		cout<<s[k-1];
		printzx(r[k]);
	}
}
void printhx(int k)
{
	if (s[k-1]=='.') return;
	else
	{
		printhx(l[k]);
		printhx(r[k]);
		cout<<s[k-1];
	}
}
int main()
{
	cin>>s;
	i=1;
    build(1);
    build(1);
    printzx(1);
    cout<<endl;
    printhx(1);
    cout<<endl;
    return 0;
}
