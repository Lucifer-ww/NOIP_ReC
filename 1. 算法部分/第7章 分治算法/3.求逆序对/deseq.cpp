#include<iostream>
using namespace std;
int n,a[101000],c[101000];
long long s;

void go(int l,int r)
{
	if (l>=r) return;
	if (l+1==r)
	{
		if (a[l]>a[r])
		{
			int x=a[l]; a[l]=a[r]; a[r]=x;
			s=s+1;
			}
		return;
		}
	int m=(l+r)/2;
	go(l,m); go(m+1,r);
	int x,y,i,t;
	x=l; y=m+1;
	t=0;
	while (x<=m && y<=r)
	{
		t++;
		if (a[x]<=a[y]) c[t]=a[x++];
		else 
		{
			c[t]=a[y++];
			s=s+m-x+1;
			}
		}
	if (x<=m)
	for (i=x;i<=m;i++) c[++t]=a[i];
	
	if (y<=r)
	for (i=y;i<=r;i++) c[++t]=a[i];
	
	for (i=l;i<=r;i++) a[i]=c[i-l+1];
}
int main()
{
	int i;
	cin>>n;
	for (i=1;i<=n;i++) cin>>a[i];
	s=0;
	go(1,n);
	cout<<s<<endl;
	return 0;
}
