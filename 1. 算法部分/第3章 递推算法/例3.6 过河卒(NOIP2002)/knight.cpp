#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;


int main()
{
	int n,m,nn,mm,i,j;
	long long f[100][100];
	cin>>n>>m>>nn>>mm;
	nn++; mm++; n++; m++;
	
	memset(f,0,sizeof(f)); f[0][1]=1;
	for (i=1;i<=n;i++)
	  for (j=1;j<=m;j++)
	    if ((abs(i-nn)+abs(j-mm)==3)&&(i!=nn)&&(j!=mm)||(i==nn&&j==mm));
	      else f[i][j]=f[i-1][j]+f[i][j-1];
	      
	cout<<f[n][m];
	
	return 0;
	}
	
	
