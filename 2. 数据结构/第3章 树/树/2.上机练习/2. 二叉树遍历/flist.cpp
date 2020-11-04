#include<cstdio>
#include<cstring>
int map[255];
char s1[255],s2[255];
int l;

void make_tree(int l,int r)
{
	if (l>r) return ;
	int k=0x7fffff,where;
	for (int i=l;i<=r;i++)
	{
		if (map[s1[i]]<k)
		{
			k=map[s1[i]];
			where=i;
		}
	}
	putchar(s1[where]);
	make_tree(l,where-1);
	make_tree(where+1,r);
}

int main(void)
{
	gets(s1);
	gets(s2);
	l=strlen(s1);
	for (int i=0;i<l;i++)
		map[s2[i]]=i;
	make_tree(0,l-1);
	putchar('\n');
	return 0;
}

