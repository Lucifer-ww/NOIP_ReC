#include<cstdio>
#include<iostream>
using namespace std;
int main ()
{
	int n,a[1000],s=0,i,j,t=0;
	cin>>n;
	for (i=1; i<=n; i++)
	cin>>a[i];
	for (j=1; j<=n-1; j++)
	  for (i=1; i<=n-j; i++)
	    if (a[i]>a[i+1])
	    {t=a[i]; a[i]=a[i+1];a[i+1]=t;}
	for (i=1; i<=n; i++)
	  if (a[i]==a[i+1])
	    a[i]=0;
	for (i=1; i<=n; i++)
	  if (a[i]!=0) 
	    s=s+1;
	cout<<s<<endl;
	for (i=1; i<=n; i++)
	  if (a[i]!=0) 
	    cout<<a[i]<<" ";
	return 0;
}

