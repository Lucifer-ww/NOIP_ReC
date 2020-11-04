#include<iostream>
#include<cmath>
using namespace std;
int n,m,i,j,a[500],f[500];
int main()
{
	cin>>n>>m;
	for(i=1; i<=n; i++) cin>>a[i];
	for(i=1; i<=n; i++)
	for(j=m; j>=a[i]; j--)
	{
		f[j]=max(f[j-a[i]]+a[i],f[j]);
	}
	if(f[m]==m) cout<<"yes";
	else cout<<"no";
}
