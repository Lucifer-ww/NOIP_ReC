#include <cmath>
#include <cstdio>
#include <cstring>	
#include <iostream>
using namespace std;

int a[10000];
string s1,s2;

void addd()
{
	int a1=s1.size(),a2=s2.size();
	for (int i=0;i<a1;i++)
	  for (int j=0;j<a2;j++)
	    a[a1-i+a2-j-1]+=(s1[i]-'0')*(s2[j]-'0');
	    
	for (int i=1;i<=a1+a2;i++) { a[i+1]+=a[i]/10; a[i]%=10; }
	a[0]=a1+a2; while (a[a[0]]==0&&a[0]>1) a[0]--;
	}

int main()
{
    getline(cin,s1);
    getline(cin,s2);
    memset(a,0,sizeof(a));
    addd();
    for (int i=a[0];i>=1;i--) cout<<a[i];
    cout<<endl;
	
	return 0;
	}
