#include<iostream>
#include<cstring>
#include<algorithm>
using namespace std;
string s1,s2;
int pos(char c,string s)
{
	int i,l;
	l=s.size();
	for (i=0;i<l;i++)
	  if (c==s[i])
	    return i;
}
void tr(int l1,int r1,int l2,int r2)
{
	int m;
	m=pos(s1[l1],s2);
	if (m>l2) 
	  tr(l1+1,l1+m-l2,l2,m-1);
	if (m<r2)
	  tr(l1+m-l2+1,r1,m+1,r2);
	cout<<s1[l1];
}
int main()
{
	cin>>s1;
	cin>>s2;
	tr(0,s1.size()-1,0,s2.size()-1);
	cout<<endl;
	return 0;
}
