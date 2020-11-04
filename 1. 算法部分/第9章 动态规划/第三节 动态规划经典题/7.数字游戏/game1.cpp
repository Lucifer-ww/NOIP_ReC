#include<cstdio>
#include<iostream>
#include<cmath>
#include<cstring>
using namespace std;
int m,n,i,j,k,t,ans1=10000000,ans2=-10000000,b,a[200],s[200],f1[155][15],f2[155][15];
int main(){
    cin >> n >> m;
    for (i=1;i<=n;i++) {cin >> a[i];a[i+n]=a[i];}
    for (i=1;i<=2*n;i++) s[i]=s[i-1]+a[i];

    for (b=1;b<=n;b++){
	memset(f1,0x3f,sizeof(f1));
	memset(f2,0xaf,sizeof(f2));
	
	for (i=b;i<=b+n-1;i++) {
	    t=(s[i]-s[b-1])%10;
	    if (t<0) t+=10;f1[i][1]=t;f2[i][1]=f1[i][1];
	}
	

	
	for (j=2;j<=m;j++)
	    for (i=j+b-1;i<=n+b-1;i++)
		for (k=j-1+b-1;k<i;k++){
		    t=(s[i]-s[k])%10;
		    if (t<0) t+=10;
		    f1[i][j]=min(f1[i][j],f1[k][j-1]*t);
		    f2[i][j]=max(f2[i][j],f2[k][j-1]*t);
		}
		  
	ans1=min(ans1,f1[n+b-1][m]);
	ans2=max(ans2,f2[n+b-1][m]);
    }
	    
    cout << ans1 << endl << ans2 << endl;
}
