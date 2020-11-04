#include<iostream>
#include<cstdlib>
using namespace std;	
int n,c,a[1000],i,m=0;
bool f[1000];

void fa(int s,int t)
{
	int i;
	if (s==c){cout<<s<<endl;exit(0);}
	if (s>c) {return;}
	if (s>m)m=s;
	//if (t>n){cout<<m<<endl;exit(0);}
	for (i=1;i<=n;i++)
	  if (f[i])
	  {
	  	f[i]=false;
	  	s+=a[i];
	  	fa(s,t+1);
	  	s-=a[i];
	  	f[i]=true;
	  }
	
}


int main()
{
	cin>>n>>c;
	for (i=1;i<=n;++i)cin>>a[i];
	for (i=1;i<=n;++i)f[i]=true;
	fa(0,1);
        cout<<m<<endl;
	return 0;
}


