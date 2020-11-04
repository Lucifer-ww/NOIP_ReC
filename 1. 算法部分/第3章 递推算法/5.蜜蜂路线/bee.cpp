#include<iostream>
#include<cstring>
using namespace std;
int n,m,i,j,a[500],b[500],c[500];
int main()
{
	cin>>n>>m;
	a[0]=1;
	a[1]=1;
	memset(b,0,sizeof(b));
	b[0]=1;
	b[1]=0;
	for (j=n+1;j<=m;j++)
	{
		for (i=0;i<=a[0];i++) c[i]=a[i];
		for (i=1;i<=a[0];i++)
		{
			a[i]+=b[i];
			a[i+1]+=a[i]/10;
			a[i]%=10;
			}
		while (a[a[0]+1]>0) a[0]++;
		memset(b,sizeof(b),0);
		for (i=0;i<=c[0];i++) b[i]=c[i];
		}
	for (i=a[0];i>=1;i--) cout<<a[i];
	cout<<endl;
	return 0;
}
