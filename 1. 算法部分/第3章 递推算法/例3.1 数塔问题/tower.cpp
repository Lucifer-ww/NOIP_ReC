#include<cmath>
#include<cstdlib>
#include<cstdio>
#include<iostream>
using namespace std;
int a[1000][1000];
int main()
{
	int i,j,k,n,m;
	cin>>n;
	for (i=1;i<=n;i++)
	for (j=1;j<=i;j++)
	cin>>a[i][j];
	for (i=n;i>0;i--)
	for (j=1;j<=i;j++)
	if (a[i+1][j]>=a[i+1][j+1])
	{
		a[i][j]=a[i][j]+a[i+1][j];
		}
    	else
	{
		a[i][j]=a[i][j]+a[i+1][j+1];
		}		
		cout<<a[1][1];
	return 0;    
}