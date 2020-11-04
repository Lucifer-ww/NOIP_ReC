#include<iostream>
#include<cmath>
using namespace std;
int n,i,j,out[501],sta[1001];

void solve(int n)
{
	if (n==0) return;
	solve(n/2);
	for (i=1;i<=500;i++)
	  for (j=1;j<=500;j++)
	  if (n%2==0) sta[i+j-1]+=out[i]*out[j];
	  else sta[i+j-1]+=out[i]*out[j]*2;
	  for (i=1;i<=500;i++)
	  {
			out[i]=sta[i]%10;
			sta[i+1]+=sta[i]/10;
			}
	for (i=1;i<=1000;i++) sta[i]=0;
}
int main()
{
	cin>>n;
	cout<<floor(log(2)/log(10)*n+1)<<endl;
	out[1]=1;
	solve(n);
	for (i=500;i>=2;i--)
	{
		cout<<out[i];
		if (i%50==1) cout<<endl;
		}
	cout<<out[1]-1<<endl;
	return 0;
}
