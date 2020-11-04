#include<iostream>
using namespace std;
int n,a[10001],i,j,s=0,x,k;
bool f;
void qs(int l,int r)
{   int i=l,j=r,m=a[(l+r)/2],p;
    do
    {
      while (a[i]<m)i++;
      while (a[j]>m)j--;
      if (i<=j)
      {
       p=a[i];a[i]=a[j];a[j]=p;i++;j--;
      }
     }while (i<=j);
    if(l<j)qs(l,j);if (i<r)qs(i,r);
}
int main()
{
       cin>>n;
       for (i=1;i<=n;++i)
         cin>>a[i];
       qs(1,n);
       for (i=1;i<n;++i)
       {
	 x=a[i]+a[i+1];
         s=s+x;	 
	 for (j=i+1;j<=n;j++)
         {
           a[j]=a[j+1];
           if (a[j]>x)
           {
            a[j]=x;break;
           }
         }
	 if (j>n) a[n]=x;
       }
       cout<<s;
       return 0;
}
