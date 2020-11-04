#include<cstdio>
#include<climits>
int main()
{
	int maxw,len,n,i,j,t,w[10001],s[10001];
	long long tw;
	double f[10001];
	scanf("%d%d%d",&maxw,&len,&n);
	for(i=1;i<=n;i++) scanf("%d%d",&w[i],&s[i]);
	for(i=1;i<=n;i++)
	  f[i]=99999999999999999999;
	f[0]=0;
	for(i=1;i<=n;i++)
	{
	  t=INT_MAX;
	  tw=0;
	  for(j=i-1;j>=0;j--)
	  {
	    if (s[j+1]<t) t=s[j+1];
	    tw=tw+w[j+1];
	    if (tw>maxw) break;
	    if (f[j]+(len+0.0)/t<f[i]) f[i]=f[j]+(len+0.0)/t;
	  }
    }
    printf("%.1lf",f[n]*60);
}
