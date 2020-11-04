#include<cstdio>
#include<cmath>
#include<iostream>
using namespace std;
long long f[10000],a[10000];
int main ()
{
	long long i,j,n,m;
 	cin>>n>>m;
 	for (i=1; i<=n; i++)
 	  f[i]=0;
 	f[0]=1;
	  for (i=1; i<=n; i++)
 	    cin>>a[i];
  	  for (i=1; i<=n; i++)
     	    for (j=a[i]; j<=m; j++)
   	 	f[j]=f[j]+f[j-a[i]];
	cout<<f[m];
}
