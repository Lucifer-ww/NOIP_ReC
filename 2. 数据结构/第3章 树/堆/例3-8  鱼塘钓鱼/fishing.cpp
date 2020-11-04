#include<cstdio>
int n,m,a[1001],b[1001],c[1001],sum[1001],d[1001],
    t,p[1001],time,tot,ans=0;
void up(int x,int y)
{
	int i,j,q;
	t++;
	d[t]=x;
	p[t]=y;
	i=t;
	while (i>1)
	{
	 j=i/2;
	 if (d[j]<d[i])
	 {
	  q=d[j];d[j]=d[i];d[i]=q;
	  q=p[i];p[i]=p[j];p[j]=q;
	 }
	 i=j;
	}
}
void down()
{
	int i,j,q;
	i=1;
	while(i<t)
	{
	 j=i*2;
	 if (d[j+1]>d[j]&&j+1<=t) j++;
	 if (j>t) return;
	 if (d[j]>d[i])
	 {
	  q=d[j];d[j]=d[i];d[i]=q;
	  q=p[i];p[i]=p[j];p[j]=q;
	 }
	 i=j;
	}
}
int main()
{
	int i,j;
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
	 scanf("%d",&a[i]);
	 c[i]=a[i];
    }
	for(i=1;i<=n;i++)
	  scanf("%d",&b[i]);
	sum[1]=0;
	for(i=2;i<=n;i++)
	{
	 scanf("%d",&t);
	 sum[i]=sum[i-1]+t;
    }
	scanf("%d",&m);
	for(i=1;i<=n;i++)
	{
	 for(j=1;j<=n;j++) a[j]=c[j];
	 t=0;
	 tot=0;
	 for(j=1;j<=i;j++)
	   up(a[j],j);
	 time=m-sum[i];
	 for(j=1;j<=time;j++)
	 {
	  tot=tot+d[1];
	  a[p[1]]=a[p[1]]-b[p[1]];
	  if (a[p[1]]<0) a[p[1]]=0;
	  d[1]=a[p[1]];
	  down();
	 }
	 if (tot>ans) ans=tot;
	}
    printf("%d",ans);
}
