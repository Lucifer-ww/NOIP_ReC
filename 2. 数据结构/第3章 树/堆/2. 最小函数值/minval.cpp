#include<cstdio>
#include<cstring>
int m,n,a[10001],b[10001],c[10001],x[10001],
    d[10001],p[10001],xx,t=0;
int f(int a,int b,int c,int x)
{
	return (a*x*x+b*x+c);
}
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
	 if (d[j]>d[i])
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
	 if (d[j+1]<d[j]&&j+1<=t) j++;
	 if (j>t) return;
	 if (d[j]<d[i])
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
	scanf("%d%d",&n,&m);
	memset(d,0,sizeof(d));
	for(i=1;i<=n;i++)
	{
	 scanf("%d%d%d",&a[i],&b[i],&c[i]);
	 x[i]=1;
	 xx=f(a[i],b[i],c[i],x[i]);
	 up(xx,i);
    }
    for(i=1;i<=m;i++)
	{
	 printf("%d ",d[1]);
	 x[p[1]]=x[p[1]]+1;
	 d[1]=f(a[p[1]],b[p[1]],c[p[1]],x[p[1]]);
	 down();
	}
}
