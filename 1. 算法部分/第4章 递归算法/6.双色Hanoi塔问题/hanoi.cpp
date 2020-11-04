#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;


void oper(int n,char be,char en)
{
	if (n==1) { printf("1 %c %c\n",be,en); return; }
	
	if (be=='A'&&en=='C')
	{ oper(n-1,'A','B'); printf("%d A C\n",n); oper(n-1,'B','C'); }
	
	if (be=='C'&&en=='A')
	{ oper(n-1,'C','B'); printf("%d C A\n",n); oper(n-1,'B','A'); }
	
	if (be=='A'&&en=='B')
	{ oper(n-1,'A','C'); printf("%d A B\n",n); oper(n-1,'C','B'); }
	
	if (be=='C'&&en=='B')
	{ oper(n-1,'C','A'); printf("%d C B\n",n); oper(n-1,'A','B'); }
	
    if (be=='B'&&en=='C')
	{ oper(n-1,'B','A'); printf("%d B C\n",n); oper(n-1,'A','C'); }
	
    if (be=='B'&&en=='A')
	{ oper(n-1,'B','C'); printf("%d B A\n",n); oper(n-1,'C','A'); }
}

int main()
{
	int n;
	cin>>n;
	oper(n,'A','B');
	
	return 0;
	}
	
	

