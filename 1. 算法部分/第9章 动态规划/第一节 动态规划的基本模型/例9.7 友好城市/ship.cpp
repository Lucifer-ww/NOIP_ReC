#include<iostream>
using namespace std;
int i,j,a[10000],b[10000],c[10000],l,n,m;
int kp(int l,int r);
int main()
{
	cin>>n;
	for(i=1; i<=n; i++) 
	{
		cin>>a[i]>>b[i];
		c[i]=1;
	}
	kp(1,n);
	for(i=n-1; i>=1; i--)
	{
		l=0;
		for(j=i+1; j<=n; j++) if((b[i]<b[j])&&(l<c[j])) l=c[j];
		if(l>0) c[i]=l+1;
	}
	for(i=1; i<=n; i++)
		if(c[i]>m) m=c[i];
	cout<<m;	
}
int kp(int l,int r)
{
	int i,j,t,m;
        i=l;j=r;m=a[(l+r)/2];
	do
	{
		while(a[i]<m) i++;
		while(a[j]>m) j--;
		if (i<=j)
		{
			t=a[i]; a[i]=a[j]; a[j]=t;
			t=b[i]; b[i]=b[j]; b[j]=t;
			i++; j--;
		}
    }
	while(i<=j);
	if(i<r) kp(i,r);
	if(l<j) kp(l,j);
}
