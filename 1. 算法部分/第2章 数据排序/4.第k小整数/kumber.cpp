#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>
using namespace std;
bool a[30000];
int main()
{
	int n = 0,i,j,k;
	cin>>n>>k;
	for (i = 1;i <= n;i++)
	{
		cin>>j;
		a[j] = true;
	}
	i = 1;
	while ((k > 0) && (i < 30000))
	{
		if (a[i] == true)
			k--;
		i++;
	}
	if (k > 0)
		cout<<"NO RESULT"<<endl;
	else
		cout<<i - 1<<endl;
	return 0;
}
