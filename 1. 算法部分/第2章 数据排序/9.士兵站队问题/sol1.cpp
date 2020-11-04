#include<cstdio>
#include<cmath>
//#include<algorithm>
int x[10001],y[10001],n;
void qsort1(int l,int r)
{
	int i,j,m,p;
	i=l;j=r;
	m=x[(l+r)/2];
	do
	{
	while (x[i]<m) i++;
	while (x[j]>m) j--;
	if (i<=j)
	{p=x[i];x[i]=x[j];x[j]=p;
	 i++;j--;}
	}
	while (i<=j);
	if (i<r) qsort1(i,r);
	if (l<j) qsort1(l,j);
}
void qsort2(int l,int r)
{
	int i,j,m,p;
	i=l;j=r;
	m=y[(l+r)/2];
	do
	{
	while (y[i]<m) i++;
	while (y[j]>m) j--;
	if (i<=j)
	{p=y[i];y[i]=y[j];y[j]=p;
	 i++;j--;}
	}
	while (i<=j);
	if (i<r) qsort2(i,r);
	if (l<j) qsort2(l,j);
}
int main()
{
	int i,j,ans=0;;
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	  scanf("%d%d",&x[i],&y[i]);
	qsort1(1,n);
	qsort2(1,n);
	for(i=1;i<=n;i++)
	 x[i]=x[i]-i+1;
	qsort1(1,n);
	for(i=1;i<=n;i++) ans=ans+fabs(x[i]-x[(n+1)/2])+fabs(y[i]-y[(1+n)/2]);
	printf("%d",ans);
}
