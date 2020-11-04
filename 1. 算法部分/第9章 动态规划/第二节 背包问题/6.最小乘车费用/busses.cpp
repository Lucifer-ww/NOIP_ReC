#include<cstdio>
#include<cstring>
int main()
{
	int i,j,n,a[11],f[1001];
	for(i=1;i<=10;i++) scanf("%d",&a[i]);
	scanf("%d",&n);
	memset(f,127,sizeof(f));
	f[0]=0;
	for(i=1;i<=10;i++)
	  for(j=0;j<=n;j++)
	    if (j-i>=0)
	    if (f[j-i]+a[i]<f[j]) f[j]=f[j-i]+a[i];
    printf("%d",f[n]);
}
