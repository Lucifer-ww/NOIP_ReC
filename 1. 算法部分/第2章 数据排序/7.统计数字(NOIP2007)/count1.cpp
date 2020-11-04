#include<iostream>
#include<cstdio>
using namespace std;
int a[200001];
void qsort(int l, int r)
{
	int i,j,m,p;
	i=l; j=r;
	m=a[(l+r)/2];
	while (i<=j)
	{
		while (a[i]<m) i++;
		while (a[j]>m) j--;
		if (i<=j)
		{
			p=a[i]; a[i]=a[j]; a[j]=p;
			i++; j--;
		}
	}
	if (i<r) qsort(i,r);
	if (l<j) qsort(l,j);
}
int main()
{
	int n,i,t;
	cin>>n;
	for (i=0;i<n;i++)
	  scanf("%d",&a[i]);
	qsort(0,n-1);
	t=1;
	for (i=1;i<n;i++)
	  if (a[i-1]!=a[i])
	  {
		  cout<<a[i-1]<<" "<<t<<endl;
		  t=1;
	  }
	  else t++;
	cout<<a[n-1]<<" "<<t<<endl;
}
