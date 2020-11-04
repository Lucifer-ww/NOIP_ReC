#include <iostream>
using namespace std;
#include <cstdio>
#include <cstring>

string a[32768];
int n=0;

bool bj(char a,char b)
{
	if /*(strcmp(a,b)==0)*/(a==b) return true;
	return false;
}

int main()
{
	do
	{
		n++;
		getline(cin,a[n]);
	}
	while (a[n].size()!=0);
	n--;
	
	for (int i=1; i<=n-1; i++)
	 for (int j=i+1; j<=n; j++)
	  if (a[i]>a[j]) swap(a[i],a[j]);
	 
	
	int t=a[1].size();
	for (int i=2; i<=n; i++)
	{
		int j=0; 
		while (bj(a[i][j],a[i-1][j])&&j<=a[i-1].size()) j++;
		t=t+a[i].size()-j;
	}
	cout<<t+1;
}

