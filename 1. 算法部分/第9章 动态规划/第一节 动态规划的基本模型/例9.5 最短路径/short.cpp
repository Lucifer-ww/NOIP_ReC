#include<iostream>
using namespace std;
int a[500][500],f[500],d[500],i,j,n;
int main()
{
	cin>>n;
	for(i=1; i<=n; i++)
	{
		d[i]=10000;
		for(j=1; j<=n; j++)
	    cin>>a[i][j];
	} 
		d[n]=0;
	for(i=n-1; i>=1; i--)
	for(j=i+1; j<=n; j++)
	{
		if((a[i][j]!=0)&&(a[i][j]+d[j]<d[i])&&(d[j]!=10000))
		{
			d[i]=a[i][j]+d[j]; f[i]=j;
		}
	}
	cout<<"minlong="<<d[1]<<endl;
	n=1;
	while(n!=0)
	{
		cout<<n<<" ";
		n=f[n];
	}
}
