#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
long long a[1000];
int main ()
{
  int s=0,l1,l2,l3,l4,l5,l6,a1,a2,a3,a4,a5,a6,j,i,m=0;
    cin>>l1>>l2>>l3>>l4>>l5>>l6;
  for (j=1; j<=6; j++)
    for (a1=0; a1<=l1; a1++)
      for (a2=0; a2<=l2; a2++)
        for (a3=0; a3<=l3; a3++)
          for (a4=0; a4<=l4; a4++)
            for (a5=0; a5<=l5; a5++)
              for (a6=0; a6<=l6; a6++)
              {
         		s=a1+a2*2+a3*3+a4*5+a5*10+a6*20;
			a[s]++;
			s=0; 	
	      }
	for (i=0; i<=1000; i++)
	  if (a[i]!=0)
	   m++;
	cout<<"Total="<<m-1;
}