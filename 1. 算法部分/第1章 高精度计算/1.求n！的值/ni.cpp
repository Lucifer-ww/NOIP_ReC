#include<iostream>
#include<cstring>
using namespace std;
int a[100000],n,i,y,xy[100000];

int main()
{
	cin>>n;
	a[0]=1;
	a[1]=1;
	for (y=1;y<=n;y++) 
	{
		memset(xy,0,sizeof(xy));
	    xy[0]=a[0];
	    for (i=1;i<=a[0];i++)
	    {
		  xy[i]+=a[i]*y;
		  xy[i+1]=xy[i]/10;
		  xy[i]%=10;
		}
	    while (xy[xy[0]+1]>0) 
		{
			xy[xy[0]+2]=xy[xy[0]+1]/10;
			xy[xy[0]+1]%=10;
			xy[0]++;
	    }
	    for (i=1;i<=xy[0];i++) a[i]=xy[i];
	    a[0]=xy[0];
	}
	for (i=a[0];i>=1;i--) cout<<a[i];
	cout<<endl;
	return 0;
}
