#include<cstdio>
#include<string>
#include<iostream>
using namespace std;
long n,j,k,a[10],m;
bool c[10];
long p()
{
	int ii;
	for (ii=1; ii<=n; ii++)
	  cout<<a[ii]<<' ';
	cout<<endl;
}
long se(long k)
{
	int i;
    if (k>n) {p(); return 0;} 
    for (i=1; i<=n; i++)
      if (c[i]==0){
			a[k]=i;
			c[i]=1;
			se(k+1);
			c[i]=0;
      }
}
int main()
{
	int ccc;
    cin>>n;
    for (ccc=1; ccc<=10; ccc++) c[ccc]=0; 
    se(1);
}
