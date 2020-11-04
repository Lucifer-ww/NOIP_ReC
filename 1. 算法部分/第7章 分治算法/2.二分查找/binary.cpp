#include<iostream>
using namespace std;
int n,i,x,a[100001];
int erfind(int s,int t,int x)
{
  int mid,ans=-1;
  while(s<t)
  {
     mid=(s+t)/2;
     if(x==a[mid])
     {
       ans=mid;
       t=mid-1;
      };
     if(x<a[mid])t=mid-1;
     if(x>a[mid])s=mid+1;
  }
  if(a[s]==x) ans=s;
  return ans;
}
int main()
{
   cin>>n;
   for(i=1;i<=n;i++)cin>>a[i];
   cin>>x;
   cout<<erfind(1,n,x)<<endl;
  return 0;
}
