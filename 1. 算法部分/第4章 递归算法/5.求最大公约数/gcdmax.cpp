#include<cstdio>
#include<string>
#include<iostream>
using namespace std;
long k(long x, long y)
{
    int r;
    r=x%y;
    while (r!=0)
    {
      x=y; y=r;
      r=x%y;
    } 
    return y;
}
int main()
{
    long a,b;
    cin>>a>>b;
    cout<<"gcd="<<k(a,b);
}
    
