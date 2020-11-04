#include<cstdio>
int a[25][25],b[25]={0},n,min=1000000000;

void search(int s,int t)
{
	if(t>min) return;
	if(s>n) return;
	for(int i=1;i<=n;i++)
	  if(!b[i])
	  {
	      b[i]=1;
	      t+=a[s][i];
	      if(s<n) search(s+1,t);
	            else if(t<min) min=t;
	      b[i]=0;
	      t-=a[s][i];
	  }
}
int main()
{
	scanf("%d",&n);
	for(int i=1;i<=n;i++)
	  for(int j=1;j<=n;j++) scanf("%d",&a[i][j]);
	search(1,0);
	printf("%d",min);
	return 0;
}