#include<cstdio>
#include<cstring>
int main()
{
	int l1,l2,l3,c1,c2,c3,n,m,i,j,p,s,t;
	long long d[101],dis,f[101];
	scanf("%d%d%d%d%d%d",&l1,&l2,&l3,&c1,&c2,&c3);
	scanf("%d",&n);
	scanf("%d%d",&s,&t);
	if (s>t)
	{p=s;s=t;t=p;}
	d[1]=0;
	for(i=2;i<=n;i++)
	  scanf("%I64d",&d[i]);
	memset(f,127,sizeof(f));
	f[s]=0;
	for(i=s+1;i<=t;i++)
	  for(j=s;j<=i-1;j++)
	  {
	   dis=d[i]-d[j];
	   if (dis<=l1) 
	     if (f[j]+c1<f[i]) f[i]=c1+f[j];
	   if (dis>l1&&dis<=l2) 
	     if (f[j]+c2<f[i]) f[i]=c2+f[j];
	   if (dis>l2&&dis<=l3) 
	     if (f[j]+c3<f[i]) f[i]=c3+f[j];
	  }
	printf("%I64d",f[t]);
}
