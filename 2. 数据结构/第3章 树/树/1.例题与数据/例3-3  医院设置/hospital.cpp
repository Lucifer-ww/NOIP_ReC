#include<iostream>
#include<cstring>
using namespace std;
int n,i,j,k,x,y,a[1000],g[1000][1000],m=1000000;
int main()
{
	long long t;
	cin>>n;
    for(i=1; i<=n; i++)
	{
		cin>>a[i]>>x>>y;
		if (x!=0){g[i][x]=1;g[x][i]=1;}
		if (y!=0){g[i][y]=1;g[y][i]=1;}
	}
	for(i=1; i<=n; i++)
	for(j=1; j<=n; j++)
	    if(g[i][j]!=1) g[i][j]=10001;	
	for(k=1; k<=n; k++)
	for(i=1; i<=n; i++)
	for(j=1; j<=n; j++)
        if((i!=k)&&(i!=j)&&(j!=k)&&(g[i][k]+g[k][j]<g[i][j])) g[i][j]=g[i][k]+g[k][j];  
	for(i=1; i<=n; i++)
    {
		
    for(j=1; j<=n; j++)
        if(i!=j) t=t+g[i][j]*a[j];
        if(t<m) m=t;
        t=0;
	}
	cout<<m;
}
