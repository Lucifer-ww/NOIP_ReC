#include <cmath>
#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <iomanip>
#include <iostream>
using namespace std;
int main()
{
	int n,m,i,j,f[1000];
	cin>>n;
	f[1] = 1;
	f[2] = 2;
	f[3] = 4;
	for (i = 4;i <= n;i++)
	  f[i] = f[i - 1] + f[i - 2] + f[i - 3];
	cout<<f[n];
   return 0;
}
