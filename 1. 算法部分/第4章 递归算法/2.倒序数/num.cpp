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
	dg(n);
	return 0;
}
int dg(int i)
{
	int j,k;
	j = i % 10;
	k = i / 10;
	cout<<j;
	if (k != 0) dg(k);
	return 0;
}
