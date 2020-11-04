#include<cstdio>
#include<cstring>
char tree[1000];
int l,ans=0;

void search(int x)
{
	if (x>=l) return ;
	int y=x<<1;
	if (tree[y]=='#'&&tree[y+1]=='#') ;
	else if (tree[y]=='#'||tree[y+1]=='#') ans=1;
	else {
		search(y);
		search(y+1);
	}
}

int main(void)
{
	gets(tree+1);
	tree[0]=7;
	l=strlen(tree);
	memset(tree+l,'#',l);
	search(1);
	if (ans) puts("No");
	else puts("Yes");
	return 0;
}

