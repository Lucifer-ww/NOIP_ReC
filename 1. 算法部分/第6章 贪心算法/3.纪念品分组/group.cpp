#include<iostream>
#include<algorithm>
int a[30100],n;
using namespace std;
int main()
{
	int m,i,t,w,k;
	cin>>m;
	cin>>n;
	for (i=0;i<=n-1;i++) cin>>a[i];
	sort(a,a+n);
	t=0;
	w=n-1;
	k=0;
	while (t<=w)
	{
		k++;
		if (a[t]+a[w]<=m || t==w)
		{
		    t++;w--;
			}
		else w--; 
		}
	cout<<k<<endl;
	return 0;
}
