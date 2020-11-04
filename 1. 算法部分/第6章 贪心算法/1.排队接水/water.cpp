#include<cstdio>
#include<iostream>
using namespace std;
long n,i,j,c,t,a[1000],b[1000];
float s;
int main()
{
   cin>>n;
   for (i=1; i<=n; i=i+1) { cin>>a[i]; b[i]=i; }
   for (i=1; i<=n-1; i=i+1)
     for (j=i+1; j<=n; j=j+1)
      if (a[i]>a[j])
      { t=a[i]; a[i]=a[j]; a[j]=t;
	t=b[i]; b[i]=b[j]; b[j]=t; }
	for (i=1; i<=n; i++){
	   	c=c+a[i];
	   	s=s+c;
	}
	for (i=1; i<=n; i++)
	  cout<<b[i]<<" ";
	cout<<endl;
	printf("%.2f\n",s/n);
}