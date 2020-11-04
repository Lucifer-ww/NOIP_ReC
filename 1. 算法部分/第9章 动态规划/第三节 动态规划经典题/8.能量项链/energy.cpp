#include<cstdio>
#include<iostream>
#include<cstdlib>
int t1,t2,n,i,j,k,ans=0,a[250],f[205][205];
int max(int a,int b){
    if (a>b) return a;
    else return b;
}
using namespace std;
int main()
{
    cin >> n;
    for (i=1;i<=n;i++)
    {
       cin >> a[i];
       a[i+n]=a[i];
    }
    a[0]=a[n];a[n*2+1]=a[1];
    for (i=2*n;i>=1;i--){
	for (j=i;j<=2*n;j++){
	    for (k=i;k<=j;k++){
		f[i][j]=max(f[i][j],f[i][k-1]+f[k+1][j]+a[i-1]*a[k]*a[j+1]);
	    }
	    if (j-i+1==n-1) ans=max(ans,f[i][j]);
	}
    }			    
    cout << ans;
}
