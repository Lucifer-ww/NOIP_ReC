#include<iostream>
#include<iomanip>
using namespace std;
long n,i,j,t,s,a[1000];
int main()
{
   cin>>n;
   for (i=1; i<=n; i=i+1)
     cin>>a[i];
   for (j=1; j<=n-1; j=j+1)
     for (i=1; i<=n-j; i=i+1)
      if (a[i]>a[i+1])
      {
		 t=a[i]; a[i]=a[i+1]; a[i+1]=t;
		 s++;
	  };
   cout<<s;
   return 0;    
}

