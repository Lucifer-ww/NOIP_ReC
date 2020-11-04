#include <iostream>
using namespace std;
#include <cstdio>		
#include <cstring>

int d[5],len;
bool flag;

void wrongpr()
{
	cout<<"NO"<<"\n";
	flag=false;
	return;
}

void check(int x)
{
	for (int i=1; i<x; i++)
	  if (d[i]!=0) 
	  {
	  	wrongpr();
	  	return;
	  }
}

int main()
{
	int n;
	cin>>n;
	string s;
	getline(cin,s);
	for (int i=1; i<=n; i++)
	{
		len=0;	memset(d,0,sizeof(d));	flag=true;
		string s;
		getline(cin,s);
		s="L"+s;
		char as[256];
		for (int i=1; i<=s.size()-1; i++)
		{
			if (not flag) break;
			switch (s[i])
			{
				case '<':
				{
					len++; as[len]='<';
					d[1]++;
					break;
				}
				case '(':
				{
					check(2);
					len++; as[len]='(';
					d[2]++;
					break;
				}
				case '[':
				{
					check(3);
					len++; as[len]='[';
					d[3]++;
					break;
				}
				case '{':
				{
					check(4);
					len++; as[len]='{';
					d[4]++;
					break;
				}
				case '>':
				{
					if ((as[len]!='<')||(d[1]==0)) wrongpr();
					len--;
					d[1]--;
					break;
				}
				case ')':
				{
					if ((as[len]!='(')||(d[2]==0)) wrongpr();
					len--;
					d[2]--;
					break;
				}
				case ']':
				{
					if ((as[len]!='[')||(d[3]==0)) wrongpr();
					len--;
					d[3]--;
					break;
				}
				case '}':
				{					
					if ((as[len]!='{')||(d[4]==0)) wrongpr();
					len--;	
					d[4]--;
					break;
				}
			}
		}
	if (len!=0&&flag) wrongpr();
	if (flag) cout<<"YES"<<"\n";
	}
	cout<<"\n";
}

