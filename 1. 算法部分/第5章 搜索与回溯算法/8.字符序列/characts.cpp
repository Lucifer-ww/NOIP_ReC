#include<iostream>
#include<cstdlib>
using namespace std;
int n,a[100],s;
void go(int x)
{
	if (x>n) 
	{
		s++;
		return;
		}
	int i;
	for (i=1;i<=3;i++)
	if (a[x-3]*10+a[x-2]!=a[x-1]*10+i)
	{
		a[x]=i;
		go(x+1);
		}
}
int main()
{
	cin>>n;
	if (n<=2)
	{
		if (n==1) cout<<3;
		else cout<<9;
		cout<<endl;
		exit(0);
		}
	s=0;
	int i,j,k;
	for (i=1;i<=3;i++)
	  for (j=1;j<=3;j++)
	    for (k=1;k<=3;k++)
	  {
			a[1]=i; a[2]=j; a[3]=k;
			go(4);
			}
	cout<<s<<endl;
	return 0;
}
