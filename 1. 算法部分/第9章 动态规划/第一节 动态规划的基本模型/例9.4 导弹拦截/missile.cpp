#include<iostream>
#include<stdio.h>
using namespace std;
int main()
{
	int y,n,i,k,x,p,j,a[1001],l[1001];
	n=0;
	while (scanf("%d",&x)==1) a[++n]=x;
	k=1; l[1]=a[1];
	for (i=2;i<=n;i++)
	{
		p=0;
		for (j=1;j<=k;j++)
		if (l[j]>=a[i])
		{
		  if (p==0) p=j;
		  else 
		  if (l[j]<l[p]) p=j;
		}
		if (p==0) l[++k]=a[i];
		else l[p]=a[i];
		}
	y=1;
	for (i=1;i<=n;i++)
	{
		x=1;
		for (j=1;j<i;j++)
		if (a[j]>=a[i] && l[j]+1>x) x=l[j]+1;
		l[i]=x;
		if (x>y) y=x;
		}
	cout<<y<<endl;
	cout<<k<<endl;
	return 0;
}
