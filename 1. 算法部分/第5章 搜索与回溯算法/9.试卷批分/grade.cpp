#include<stdio.h>
#include<string.h>
#include<math.h>
#include<iostream>
using namespace std;
int a[100],b[100],c[100],d[100];
bool bo;
void jc(int x,int y,int z,int u,int k)
{
	int i;
	if(k>10)
	{ if(x==7&&y==5&&z==3) 
	  {printf("%d",u*10); bo=true;}
	  return; }
	for(i=0;i<=1;i++)
	{ jc(x+(i==a[k]),y+(i==b[k]),z+(i==c[k]),u+(i==d[k]),k+1);
	  if(bo) return;}
	  
}
main()
{
	int i;
	bo=false;
	memset(a,0,sizeof(a));
	memset(b,0,sizeof(b));
	memset(c,0,sizeof(c));
	memset(d,0,sizeof(d));
	a[3]=a[5]=a[8]=1;
	b[2]=b[3]=b[4]=b[6]=b[8]=b[9]=b[10]=1;
	c[2]=c[3]=c[4]=c[8]=c[10]=1;
	d[3]=d[4]=d[5]=d[8]=d[9]=d[10]=1;
	jc(0,0,0,0,1);
}
