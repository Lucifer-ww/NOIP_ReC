#include<iostream>
#include<cstdio>
using namespace std;
int a[100];
int main()
{
	int n,i,av,j,s=0;
	cin>>n;
	for (i=1; i<=n; i++) 
	{cin>>a[i]; s=s+a[i];}
	av=s/n; s=0;
	for (i=1; i<=n; i++) a[i]=a[i]-av;
	i=1; j=n;
	while (a[i]==0) i++;
	while (a[j]==0) j++;
	while (i<j)
	{
		a[i+1]=a[i+1]+a[i];
		a[i]=0;
		s++;
		i++;
		while (a[i]==0) i++;
	}
	cout<<s;
}
