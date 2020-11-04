#include<cstdio>
#include<cstring>
#include<iostream>
#include<cmath>
using namespace std;
long n,i,j,s,a[30000];
long se(long l,long r)
{
     long v,t,i,j;
     i=l; j=r;
     v=a[(l+r)/2];
     do
     {
         while (a[i]<v) i++;
         while (a[j]>v) j--;
         if (i<=j) {
           t=a[i]; a[i]=a[j]; a[j]=t;
           i++; j--;
         }
     } while(i<=j);
     if (l<j) se(l,j);
     if (i<r) se(i,r);
}
int main()
{
    cin>>n;
    for (i=1; i<=n; i++) cin>>a[i];
    se(1,n);
    cin>>n;
    for (i=1; i<=n; i++) 
    { cin>>s; cout<<a[s]<<endl; }     
}
