#include<cstdio>
#include<algorithm>
using namespace std;

int main(){
  int n;
  scanf("%d",&n);
  int *a=new int [n];
  for (int i=0; i<n; ++i) scanf("%d",&a[i]);
  sort(a,a+n);
  for (int i=0,sum=0; i<n; ++i) {
    ++sum;  if ( (i+1==n) || (a[i]!=a[i+1])) printf("%d %d\n",a[i],sum),sum=0;
  }
  return 0;
}

