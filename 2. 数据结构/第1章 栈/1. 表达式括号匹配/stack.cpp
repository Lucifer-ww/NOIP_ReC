#include<iostream>
using namespace std;
char a[255];
int main()
{
	int n=0,s=0;
	do
	{
		n++;
		cin>>a[n];
		if (a[n]=='(') s++; 
		if (a[n]==')') s--; 
	}while(a[n]!='@');
	if (s==0)cout<<"YES";
	else cout<<"NO";
}
