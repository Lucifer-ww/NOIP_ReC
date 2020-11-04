#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
int b[4][100001];
int main ()
{
	int i,j,n,m=-1000001,k,t,s;
	n=1; 
	while (cin>>b[1][n]) n++; 
	n--;
	for (i=1; i<=n; i++)
	{ b[2][i]=1; b[3][i]=0; }
	for (i=n-1; i>=1; i--)
	{
		t=0; k=0;
		for (j=i+1; j<=n; j++)
		if ((b[1][j]>b[1][i])&&(b[2][j]>t))
		{
			t=b[2][j];
		    k=j;
		}
		if (t>0)
		{
			b[2][i]=t+1;
			b[3][i]=k;
		}
		if (b[2][i]>m) m=b[2][i];
	}
	k=1;
		for (j=1; j<=n; j++)
		if (b[2][j]>b[2][k]) k=j;
	cout<<"max="<<m<<endl;
	do
	{
		cout<<b[1][k]<<" ";
		k=b[3][k];
	}	while (k!=0);
}
