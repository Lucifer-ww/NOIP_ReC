#include<cstdio>
int main()
{
	int i,j,m,s,t,n,ans,max;
	scanf("%d%d%d",&m,&s,&t);
	ans=1000000;
	max=0;
	for(i=0;i<=t;i++)
	{
	  n=m+i*4;
	  n=n/10;
	  if (n*60>=s)
	  {if ((s+59)/60+i<ans) ans=(s+59)/60+i;}
	  else
	  if (n+i+(s-n*60+16)/17<ans) ans=n+i+(s-n*60+16)/17; 
	  if (n>=t-i) 
	    if (60*(t-i)>max) max=(t-i)*60;
	  if (n+i>t) continue;
	  if (n*60+(t-n-i)*17>max) max=n*60+(t-n-i)*17;	
    } 
	if (ans<=t)
	{printf("Yes\n");printf("%d",ans);} 
	else
	{printf("No\n");printf("%d",max);}
}
