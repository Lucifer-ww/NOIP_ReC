#include<iostream>
#include<cstdio>
using namespace std;
int main()
{
	int i,a[100],n;
	cin>>n;
	a[1]=1;
	a[2]=1;
	for (i=3; i<=n; i++) 
	a[i]=a[i-1]+a[i-2];
	cout<<a[n];
}