#include<cstdio>
#include<iostream>
#include<cstdlib>
#include<cmath>
#include<cstring>
using namespace std;
char s[10000],t[10000];
long a[201];
int main()
{
	long i,x=0;
	gets(s);
	for (i=0; i<=strlen(s); i++){
		if (s[i]=='(') { x++; t[x]='(';} 
		if (s[i]=='[') { x++; t[x]='['; }
		if (s[i]==')') 
		  if(t[x]=='(') x--;
		     else x++; 
		if (s[i]==']') 
		  if(t[x]=='[') x--;
		    else x++;
    }
	if (x==0) cout<<"OK";
	    else cout<<"Wrong";
}
