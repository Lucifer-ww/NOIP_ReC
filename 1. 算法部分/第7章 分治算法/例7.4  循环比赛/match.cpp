#include<iostream>
#include<string.h>
using namespace std;
int main()
{
	const int maxn=500,maxm=600;
	int i,j,k,m,n,half,matchlist[maxn][maxn];
	cin>>m;
	n=1;
	for (i=1;i<=m;i++) n*=2;
	k=1;
	memset(matchlist,0,sizeof(matchlist));
	matchlist[1][1]=1; half=1;
	while (k<=m)
	{
		for (i=1;i<=half;i++)
		  for (j=1;j<=half;j++)
		    matchlist[i][j+half]=matchlist[i][j]+half;
		for (i=1;i<=half;i++)
		  for (j=1;j<=half;j++)
		  {
				matchlist[i+half][j]=matchlist[i][j+half];
				matchlist[i+half][j+half]=matchlist[i][j];
				}
		half*=2; k++;
		}
	for (i=1;i<=n;i++)
	{
		for (j=1;j<=n;j++) cout<<matchlist[i][j]<<' ';
		cout<<endl;
		}
	return 0;
}
