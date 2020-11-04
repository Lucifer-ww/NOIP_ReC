#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
int v[5000],w[5000],s[5000],f[6000],n,m,i,j,k;
int main  ()
{
	cin>>n>>m;
	for (i=1; i<=n; i++)
	  cin>>s[i]>>v[i]>>w[i];
    for (i=1; i<=n; i++)  
      for (j=m; j>=0; j--)
        for (k=0; k<=s[i]; k++)
        {
		  if (j-k*v[i]<0) break;
          f[j]=max(f[j],f[j-k*v[i]]+w[i]*k);
        }
	cout<<f[m];
}
