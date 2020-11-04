#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;


string s1,s2;
int i=-1,a[100];

int tree(int l,int r)
{
	int k=++i,tree_=0;
	int mid=s2.find(s1[k]);
	if (mid!=l) tree_+=tree(l,mid-1);
	if (mid!=r) tree_+=tree(mid+1,r);
	if (l==r) tree_=1;
	a[s1[k]]=tree_;
	return tree_;
	}

int main()
{
	getline(cin,s1);
	getline(cin,s2);
	tree(0,s2.size()-1);
	for (int i=0;i<s1.size();i++)
	{
	  for (int j=1;j<=a[int(s1[i])];j++) printf("%c",s1[i]);
	  printf("\n");
	}
	
	return 0;
	}
	
	

