#include<cstdio>
#include<cstring>
int main()
{
	int n,i,j,b[1001],e[1001],f[1001],ans=0,t;
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	  scanf("%d%d",&b[i],&e[i]);
	for(i=1;i<=n-1;i++)
	  for(j=i+1;j<=n;j++)
	    if (b[i]>b[j])
	    {t=b[i];b[i]=b[j];b[j]=t;
		 t=e[i];e[i]=e[j];e[j]=t;}
	for(i=1;i<=n;i++)
	  f[i]=e[i]-b[i]+1;
	for(i=2;i<=n;i++)
	  for(j=1;j<=i-1;j++)
	    if (b[i]>e[j]&&f[j]+e[i]-b[i]+1>f[i])
	      f[i]=f[j]+e[i]-b[i]+1;
	for(i=1;i<=n;i++)
	  if (f[i]>ans) ans=f[i];
	printf("%d",ans);
}
