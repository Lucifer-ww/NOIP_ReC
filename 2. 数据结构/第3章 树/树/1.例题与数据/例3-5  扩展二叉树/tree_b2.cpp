#include <iostream>
using namespace std;
#include <cstdio>
	
char s[2555];
int i=-1;
struct tree
{
	char a;
	tree *lchild,*rchild;
};

tree *root,*tzx,*thx;

tree *build()
{
	i++;
	tree *reft;
	if (s[i]!='.')
	{
		reft=new tree;
		reft->a=s[i];
		reft->lchild=build();
		reft->rchild=build();
	}
	else reft=NULL;
	return reft;
}

void printzx(tree *twork)
{
	if (twork!=NULL)
	{
		printzx(twork->lchild);
		cout<<twork->a;
		printzx(twork->rchild);
	}
	
}

void printhx(tree *twork)
{
	if (twork!=NULL)
	{
		printhx(twork->lchild);
		printhx(twork->rchild);
		cout<<twork->a;
	}
	
}

int main()
{
	cin>>s;
	root=build();
	printzx(root);
	cout<<endl;
	printhx(root);
}

