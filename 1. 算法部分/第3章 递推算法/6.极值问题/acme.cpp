#include<iostream>
using namespace std;
int main()
{
	int n=1,m=1,k,t;
	cin>>k;
	do
	{
		t=n+m;
		if(t<=k)
		{
			m=n;
		    	n=t;
		}
	}
	while(t<=k);
	cout<<"m="<<m<<endl<<"n="<<n;
}