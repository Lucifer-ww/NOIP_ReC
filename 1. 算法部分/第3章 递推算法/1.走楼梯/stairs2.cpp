#include<iostream>
#include<cstdlib>
using namespace std;
int main()
{
	long k,a,b,c,i;
	cin>>k;
	if (k==1) cout<<1;
	  else if (k==2) cout<<2;
	      else { a=1; b=2;
	        for (i=3; i<=k; i++)  { c=a+b; a=b; b=c; }
	      cout<<c;
	      }
	return 0;
}
