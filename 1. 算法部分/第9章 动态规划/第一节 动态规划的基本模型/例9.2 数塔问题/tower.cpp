#include<iostream>
#include<cmath>
using namespace std;
int a[100][100],i,j,n;
int main()
{
	cin>>n;
	for(i=1; i<=n; i++)
	for(j=1; j<=i; j++)
	cin>>a[i][j];
	for(i=n-1; i>=1;i--)
	for(j=1; j<=i; j++)
	a[i][j]=a[i][j]+max(a[i+1][j],a[i+1][j+1]);
	cout<<"max="<<a[1][1];
}
