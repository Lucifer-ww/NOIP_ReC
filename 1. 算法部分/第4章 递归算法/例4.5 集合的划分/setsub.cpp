#include <cstdio>
#include <cstring>	
#include <iostream>
#include <cmath>
using namespace std;

int ff1[300][300],ff2[300][300];
int *f1[300],*f2[300];

void oper(int k)
{
	int i;
	for (i=1;i<=f2[k][0];i++) f1[k][i]=f2[k][i]*k;
	for (i=1;i<=f2[k-1][0];i++) f1[k][i]+=f2[k-1][i];
	
	if (f2[k][0]+4>=f2[k-1][0]) f1[k][0]=f2[k][0]+4; else f1[k][0]=f2[k-1][0];
	f1[k][0]++;
	for (i=1;i<=f1[k][0];i++) { f1[k][i+1]+=f1[k][i]/10; f1[k][i]%=10; }
	while (f1[k][f1[k][0]]==0&&f1[k][0]>1) f1[k][0]--;
	}

int main()
{
	int n,m,i,j;
	memset(ff1,0,sizeof(ff1)); 
	memset(ff2,0,sizeof(ff2)); ff2[1][0]=1; ff2[1][1]=1;
	cin>>n>>m;	
	
	for (i=1;i<=n;i++)
	{
	  if (i%2==1) for (j=0;j<=m;j++) { f1[j]=ff2[j]; f2[j]=ff1[j]; }
	    else for (j=0;j<=m;j++) { f1[j]=ff1[j]; f2[j]=ff2[j]; }
	  
	  for (j=1;j<=m;j++)
	    if (i==1&&j==1); else oper(j);
	        
	        
	  if (i%2==1) memset(ff1,0,sizeof(ff1)); else memset(ff2,0,sizeof(ff2)); 
	}
	
	for (i=f1[m][0];i>=1;i--) cout<<f1[m][i];
	
	return 0;
	}
	
	
