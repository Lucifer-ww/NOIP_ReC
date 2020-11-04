#include <cmath>
#include <cstdio>
#include <cstring>	
#include <iostream>
using namespace std;


int f[300],n;

void oper()
{
	int i;
	for (i=1;i<=f[0];i++) f[i]*=2;
	f[1]+=2;
	
	for (i=1;i<=f[0];i++)
	{
		f[i+1]+=f[i]/10;
		f[i]%=10;
		}
	if (f[f[0]+1]!=0) f[0]++;
	}

int main()
{
	cin>>n;
	memset(f,0,sizeof(f)); f[0]=1; f[1]=2;
	
	for (int i=2;i<=n;i++) oper();
	for (int i=f[0];i>=1;i--) cout<<f[i];
	cout<<endl;
    
	return 0;
	}
