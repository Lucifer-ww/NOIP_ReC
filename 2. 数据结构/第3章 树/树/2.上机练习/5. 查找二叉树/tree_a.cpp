#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
#include <cstdlib>
using namespace std;

int a[300],l[300],r[300],n,m,i,ans=0;;

void tree(int k)
{
	if (k==0) return;
	tree(l[k]); 
ans++;
if (a[k]==m) { cout<<ans<<endl; exit; }
	tree(r[k]);
		}

int main()
{
	cin>>n;
	cin>>m;
	for (i=1;i<=n;i++) cin>>a[i]>>l[i]>>r[i];
	
	tree(1);
	
	return 0;
	}
	
	
