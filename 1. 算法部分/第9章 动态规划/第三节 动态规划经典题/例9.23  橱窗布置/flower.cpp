#include<cstdio>
#include<cstring>
typedef int arr[101][101];
arr a,b,c;
int d[101];
int f,v;
int main(void)
{
	scanf("%d%d",&f,&v);
	for (int i=1;i<=f;i++)
		for (int j=1;j<=v;j++)
			scanf("%d",&a[i][j]);
	for (int i=1;i<=v-f+1;i++)
		b[1][i]=a[1][i];
	for (int i=2;i<=f;i++)
		for (int j=i;j<=v-f+i;j++)
			for (int k=i-1;k<j;k++)
				if (b[i-1][k]+a[i][j]>b[i][j])
				{
					b[i][j]=b[i-1][k]+a[i][j];
					c[i][j]=k;
				}
	int max=0,k;
	for (int i=f;i<=v;i++)
		if (b[f][i]>max) 
			max=b[f][k=i];
	printf("%d\n",max);
	for (int i=1;i<=f;i++)
	{
		d[i]=k;
		k=c[f-i+1][k];
	}
	for (int i=f;i>=2;i--)
		printf("%d ",d[i]);
	printf("%d\n",d[1]);
	return 0;
}
