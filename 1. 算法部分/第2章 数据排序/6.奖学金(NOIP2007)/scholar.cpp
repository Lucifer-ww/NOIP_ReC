#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>
using namespace std;
struct info
{
	int id;
	int tot;
	int zhcn;
};
info score[301];
int n;
void infoget(int id);
bool infocomp(info,info);
void infoswap(int,int);
void qsort(int l,int r);

int main()
{
	cin>>n;
	for (int i = 1;i <= n;i++) infoget(i);
	qsort(1,n);
	for (int ccc = 1;ccc <= 5;ccc++)
		cout<<score[ccc].id<<" "<<score[ccc].tot<<endl;
	return 0;
}
void infoget(int id)
{
	int a,b,c;
	cin>>a>>b>>c;
	score[id].id = id;
	score[id].zhcn = a;
	score[id].tot = a + b + c;
	return;
}
void qsort(int l,int r)
{
	int i = l,j = r;
	info mid;
	mid = score[(l + r) / 2];
	do
	{
		while (infocomp(score[i],mid))i++;
		while (infocomp(mid,score[j]))j--;
		if (i <= j)
		{
			infoswap(i,j);
			i++;
			j--;
		}
	}
	while (i <= j);
	if (l < j) qsort(l,j);
	if (i < r) qsort(i,r);
	return;
}
bool infocomp(info a,info b)
{
	if (a.tot > b.tot)
		return true;
	else if (a.tot == b.tot)
		if (a.zhcn > b.zhcn)
			return true;
		else if (a.zhcn == b.zhcn)
			if (a.id < b.id)
				return true;
	return false;
}
void infoswap(int id1,int id2)
{
	info p;
	p=score[id1];
	score[id1] = score[id2];
	score[id2] = p;
	return;
}
