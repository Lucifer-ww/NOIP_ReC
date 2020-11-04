#include<iostream>
using namespace std;
int a[41],c[41];
int n,m,ans;

void search(int x,int tot)
{
	if (tot+c[x]<ans) return;
	if (tot>m) return;
	if (tot>ans) ans=tot;
	if (ans==m) return;
	for (int i=x;i!=n;++i)
	{
		search(i+1,tot+a[i]);
	}
}

int main()
{
	cin>>n>>m;
	for (int i=0;i!=n;++i) cin>>a[i];
	for (int i=n;i!=0;--i) c[i-1]=c[i]+a[i-1];
	search(0,0);
	cout<<ans<<endl;
	return 0;
}
