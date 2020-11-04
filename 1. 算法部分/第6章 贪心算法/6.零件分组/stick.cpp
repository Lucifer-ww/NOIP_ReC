#include<iostream>
using namespace std;
int a[1100],b[1100];

void qsort(int l,int r)
{
	int i,j,mid,p;
	i=l; j=r;
	mid=a[(l+r)/2];
	while (i<=j)
	{
		while (a[i]<mid) i++;
		while (a[j]>mid) j--;
		if (i<=j)
		{
			p=a[i]; a[i]=a[j]; a[j]=p;
			p=b[i]; b[i]=b[j]; b[j]=p;
			i++; j--;
			}
		}
	if (l<j) qsort(l,j);
	if (i<r) qsort(i,r);
} 

int main()
{
	int n,i,k,x,j,c[1010];
	cin>>n;
	for (i=1;i<=n;i++) 
	{
	  cin>>a[i]>>b[i];
	  a[i]=a[i]*10000+b[i];
	}
	qsort(1,n);
	k=1;
	c[1]=b[1];
	for (i=2;i<=n;i++)
	{
		x=0;
		for (j=1;j<=k;j++)
		if (c[j]<=b[i])
		{
			if (x==0) x=j;
			else
			if (c[j]>c[x]) x=j;
			}
		if (x==0) c[++k]=b[i];
		else c[x]=b[i];
		}
	cout<<k<<endl;
	return 0;
}
