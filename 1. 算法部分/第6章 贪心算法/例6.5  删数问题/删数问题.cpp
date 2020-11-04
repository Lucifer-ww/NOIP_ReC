#include<iostream>
#include<cstdio>
#include<cstring>
#include<string>
#include<cmath>
using namespace std;
int main()
{
	char n[10001];
	int i,j,m,s;
	cin>>n>>s;int len=strlen(n);
	for (i=1;i<=s;i++)
	  {
	  	for (j=0;j<len;j++)
	  	  if (n[j]>n[j+1])
	  	    {
	  	    	for (int z=j;z<len;z++)
	  	    	  n[z]=n[z+1];break;
			  }
		len--;
	  }
	j=0;m=len;
	while (n[j]=='0'&&m>1)
	  j++,m--;
	for (i=j;i<len;i++)
	  cout<<n[i];
	return 0;
}
