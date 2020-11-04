#include<iostream>
#include<cmath>
#include<cstdlib>
using namespace std;	
int n,a[10000000],b[10000000],m,i,k=1,s=0;
bool f[10000000];
void print(int k)
{
	for (i=1;i<=k;++i)cout<<b[i]<<" ";
	exit(0);
} 

void gcd(int k,int s,int m)
{   
    int i;
	if (s>m)return;
	if (k>n){cout<<"No Solution!";exit(0);}
	for (i=1;i<=n;++i)
	if (f[i])
	{
		f[i]=false;
		s=s+a[i];
		b[k]=a[i];
		if (s==m){print(k);}
		  else gcd(k+1,s,m);
		s=s-a[i];
	        f[i]=true;
	        b[k]=0;
	}
	
    return ;
}


int main()
{
	cin>>n;	cin>>m;
	for (i=1;i<=n;++i)cin>>a[i];
	for (i=1;i<=n;++i)f[i]=true;
	gcd(k,s,m);
	return 0;
}