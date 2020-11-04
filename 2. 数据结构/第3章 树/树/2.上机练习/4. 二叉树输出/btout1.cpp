#include <iostream>
using namespace std;
#include <cstdio>

string s1,s2;

int ls[27],rs[27],roots,tree[27]; 
int len,now;

void left(int p,int l,int r);
void right(int p,int l,int r);

void print(int root)
{
	if (root==0) return;
	
	for (int i=1; i<=tree[root]; i++) 
	  cout<<char (root+64);
	cout<<"\n";
	print(ls[root]);
	print(rs[root]);
}

int main()
{
	getline(cin,s1); getline(cin,s2);
	s1='K'+s1; s2='H'+s2;
	len=s1.size();
	int root=s1[1]-64;
    int mid;
    for (mid=1; mid<=len-1; mid++)
      if ((s2[mid]-64)==root) break;
      
    now=2;
    left(root,1,mid-1);
    right(root,mid+1,len-1);
    tree[root]=tree[ls[root]]+tree[rs[root]];
    
    print(root);
}


void left(int p,int l,int r)
{
	if (l>r) return; 
	int root=s1[now]-64;
	int mid;
    for (mid=1; mid<=len; mid++)
      if ((s2[mid]-64)==root) break;
	ls[p]=root;
	now++;
	if (l!=r) 
	{
    	left(root,l,mid-1);
    	right(root,mid+1,r);
 	    tree[root]=tree[ls[root]]+tree[rs[root]];
    }
    else tree[root]=1;
}

void right(int p,int l,int r)
{
	if (l>r) return;
	int root=s1[now]-64;
	int mid;
    for (mid=1; mid<=len; mid++)
      if ((s2[mid]-64)==root) break;
	rs[p]=root;
	now++;
	if (l!=r) 
	{
	   	left(root,l,mid-1);
		right(root,mid+1,r);
	    tree[root]=tree[ls[root]]+tree[rs[root]];
    }
    else tree[root]=1;
}
















