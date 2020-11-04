#include<cstdio>
#include<iostream>
#include<cmath>
#include<cstring>
using namespace std;
struct num{
    int s;
    int k[10];
};
int n,m,i,j,r;
struct num er,c,ans,anss,f[85][85],s[85],a[85];
struct num cheng(struct num a,struct num b){
    memset(c.k,0,sizeof(c.k));
    c.s=a.s+b.s;
    int t;    
    for (int i=1;i<=a.s;i++)
	for (int j=1;j<=b.s;j++){
	    t=i+j-1;
	    c.k[t]+=a.k[i]*b.k[j];
	    while (c.k[t]>=10000){
		c.k[t+1]+=c.k[t] / 10000;
		c.k[t]%=10000;
	    }
	}
    if (c.k[c.s]==0) c.s--;
    return c;
}
    
struct num jia(struct num a,struct num b){
    memset(c.k,0,sizeof(c.k));
    c.s=max(a.s,b.s);
    for (int i=1;i<=c.s;i++){
	c.k[i]+=a.k[i]+b.k[i];
	if (c.k[i]>=10000){
	    c.k[i+1]++;
	    c.k[i]-=10000;
	}
    }
    if (c.k[c.s+1]) c.s++;
    return c;
}
struct num maxx(struct num a,struct num b){
    if (a.s>b.s) return a;
    if (a.s<b.s) return b;
    for (int i=a.s;i>=1;i--){
	if (a.k[i]>b.k[i]) return a;
	if (a.k[i]<b.k[i]) return b;
    }
    return a;
}
int main(){
    cin >> n >> m;
    s[0].s=1;s[0].k[1]=1;
    er.s=1;er.k[1]=2;
    for (i=1;i<=81;i++) s[i]=cheng(s[i-1],er);
    for (;n>=1;n--){
	ans.s=0;
	memset(ans.k,0,sizeof(ans.k));
	memset(f,0,sizeof(f));
	for (j=1;j<=m;j++){
	    cin >> a[j].k[1];
	    a[j].s=1;
	}
	for (i=1;i<=m;i++){
	    for (j=1;j<=i+1;j++){
		r=j+m-i-1;
		f[i][j]=maxx(jia(f[i-1][j],cheng(a[r+1],s[i])),jia(f[i-1][j-1],cheng(a[j-1],s[i])));
		if (i==m) ans=maxx(ans,f[i][j]);
		
	    }
	}
	anss=jia(anss,ans);
    }
    cout << anss.k[anss.s];
    for (i=anss.s-1;i>=1;i--){
	if (anss.k[i]<1000) cout << 0;
	if (anss.k[i]<100) cout << 0;
	if (anss.k[i]<10) cout << 0;
	cout << anss.k[i];
    }
}

