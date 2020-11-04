#include<iostream>
using namespace std;
int a[500],b[500],c[500],i,j,n,m;
int main()
{
	cin>>n;
	for(i=1; i<=n; i++) cin>>a[i];
	for(i=1; i<=n; i++)
	{
		c[i]=1; 
		for(j=1; j<=i-1; j++) if((a[j]<a[i])&&(c[j]+1>c[i])) c[i]=c[j]+1;
    }	
	for(i=n; i>=1; i--)
	{
		b[i]=1; 
		for(j=i+1; j<=n; j++) if((a[j]<a[i])&&(b[j]+1>b[i])) b[i]=b[j]+1;
    }	
	for(i=1; i<=n; i++)	
	if(c[i]+b[i]>m) m=c[i]+b[i];
	cout<<n-m+1;
}
