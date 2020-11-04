#include<iostream>
#include<cstdio>
#include<cstdlib>
using namespace std;
long w[2002];
bool kp(long n,long m)
{
	if (w[n]==m) return true;
	  else if(n==1) return false;
	    else return (kp(n-1,m-w[n]))||(kp(n-1,m));
}
int main()
{
	long i,j,m,n;
	cin>>n>>m;
	for (i=1; i<=n; i++) cin>>w[i];
	if (kp(n,m)==true) cout<<"yes";
	  else cout<<"no";
}
