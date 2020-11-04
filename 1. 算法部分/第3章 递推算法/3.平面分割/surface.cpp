#include<cstdio>
#include<string>
#include<iostream>
using namespace std;
int main()
{
	long n,p,i,m,s,f[600];
	cin>>n>>p;
	f[p]=2*p;
	for (i=p+1; i<=n; i++)
	  f[i]=f[i-1]+i;
	cout<<f[n];
}
