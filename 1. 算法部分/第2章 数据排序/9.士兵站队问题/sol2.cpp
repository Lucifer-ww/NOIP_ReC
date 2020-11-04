#include<iostream>
#include<algorithm>
#include<cmath>
using namespace std;
int x[20000],y[20000];
int main()
{
	int n,i,xx,yy,t;
	cin>>n;
	for (i=1;i<=n;i++)
	{
	   cin>>x[i];
	   cin>>y[i];
    }
    sort(x+1,x+n+1);
    sort(y+1,y+n+1);
    for (i=1;i<=n;i++)
      x[i]=x[i]-i;
    sort(x+1,x+n+1);
    xx=x[(n+1)/2];
    yy=y[(n+1)/2];
    t=0;
    for (i=1;i<=n;i++)
    {
       t=t+fabs(x[i]-xx);
       t=t+fabs(y[i]-yy);
    }
    cout<<t<<endl;
}