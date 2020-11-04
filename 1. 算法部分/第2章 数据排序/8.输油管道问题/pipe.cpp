#include <iostream>
using namespace std;
#include <cstdio>
#include <algorithm>
#include <cmath>

int y[10001];
int n;

void work(float x)
{
	float ans=0;
	for (int i=1; i<=n; i++)  ans+=abs(x-y[i]);
	printf("%.f",ans);
}

int main()
{
	cin>>n;
	for (int i=1; i<=n; i++)
	{
		int a;
		cin>>a>>y[i];
	}
	sort(y+1,y+n+1);
	if (n%2==0) work((y[n/2]+y[n/2+1])/2);
	else work(y[n/2+1]); 
	return 0;
}
