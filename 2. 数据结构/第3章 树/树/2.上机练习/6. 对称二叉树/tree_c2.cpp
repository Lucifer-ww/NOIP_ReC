#include<iostream>
#include<cstdlib>
#include<cstring>
using namespace std;

void go()
{
	cout<<"No"<<endl;
	exit (0);
}
int main()
{
	char s[1000];
	cin>>s;
	int l,i,x,y,z;
	l=strlen(s);
	for (i=0;i<l;i++)
	if (s[i]!='#')
	{
		x=i+1; y=x*2; z=y+1;
		if (y<=l && s[y-1]!='#')
		{
			if (z>l || s[z-1]=='#') go();
			}
		else
		if (z<=l && s[z-1]!='#') go();
		}
	cout<<"Yes"<<endl;
	return 0;
}
