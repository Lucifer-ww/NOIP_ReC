#include<cstdio>
#include<string>
#include<iostream>
using namespace std;
long n,a[10],m;
bool c[10];
long p(long t)
{
	int ii;
	for (ii=1; ii<=t-1; ii++)
	  cout<<a[ii]<<"+";
	cout<<a[t]<<endl;
}
long se(long s,long t)
{
    int k;
    if (s==0) {p(t-1); return 0;} 
    for (k=1; k<=s; k++)
      if ((a[t-1]<=k)&&(k<n)){
			a[t]=k;
			s=s-k;
			se(s,t+1);
			s=s+k;
      }
}
int main()
{
    int i;
    cin>>n;
    for (i=1; i<=10; i++) c[i]=0; 
    se(n,1);
}