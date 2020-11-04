#include<cstdio>
#include<iostream>
using namespace std;
int n,a[201],f[201][201];
int sea(int i,int j)
{
	if (f[i][j])return f[i][j];
	if (i==j-1)return 0;
	int ans=0;
	for (int k=i+1;k<j;++k)
	  ans=max(ans,sea(i,k)+sea(k,j)+a[i]*a[j]*a[k]);
	f[i][j]=ans;
	return f[i][j];
}
int main()
{
	scanf("%d",&n);
	for (int i=1;i<=n;++i){scanf("%d",&a[i]);a[i+n]=a[i];}
	int ans=0;
	for (int i=1;i<=n;++i)ans=max(ans,sea(i,i+n));
	printf("%d",ans);
}