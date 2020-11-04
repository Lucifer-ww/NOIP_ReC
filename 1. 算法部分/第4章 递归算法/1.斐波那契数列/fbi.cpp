#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>
using namespace std;
int dg(int);
int main()
{
	int n;
	cin>>n;
	cout<<dg(n);
	return 0;
}
int dg(int i)
{
	if (i == 1)
		return 0;
	else if (i == 2)
		return 1;
	else
		return dg(i - 1) + dg(i - 2);
}
