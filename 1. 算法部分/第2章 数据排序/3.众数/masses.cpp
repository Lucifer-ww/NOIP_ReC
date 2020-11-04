#include<cstdio>
#include<iostream>
#include<cmath>
using namespace std;
long long a[40000];
int main ()
{
	long long n,i,j,m,s,t,max;
	cin>>n;
	max=0;
	for (i=1; i<=30000; i++)
	a[i]=0;
	for (i=1; i<=n; i++)
	{   
		cin>>t;
		a[t]=a[t]+1;
	}
	for (i=1; i<=30000; i++)
	  if (a[i]>max)
	    max=a[i];
	for (i=1; i<=30000; i++)
	  if (a[i]==max) cout<<i<<" "<<max<<endl;
}