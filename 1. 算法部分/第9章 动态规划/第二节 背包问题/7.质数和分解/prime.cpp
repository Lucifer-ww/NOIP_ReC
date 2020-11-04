#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
#include <cstdlib>
using namespace std;


int main()
{
	bool b[300];
	int n,m,i,j,a[300],f[300];
	
	memset(b,1,sizeof(b));
    n=0;
    for (i=2;i<=200;i++)
      if (b[i])
      {
			n++; a[n]=i;
			j=i; while (j<=200) { b[j]=0; j+=i; }
	        }
	
	cin>>m;
	memset(f,0,sizeof(f)); f[0]=1;
	for (i=1;i<=n;i++)
	  for (j=a[i];j<=m;j++)
	    f[j]+=f[j-a[i]];
	cout<<f[m]<<endl;
	
	return 0;
	}
	
	


