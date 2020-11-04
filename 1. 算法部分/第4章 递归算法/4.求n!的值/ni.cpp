#include<cstdio>

#define mo 10000

void mul(int *,int);
void print_arr(int *);

int ans[100001];

void n_(int n)
{
	if (n==1)
	{
		ans[0]=1;
		ans[1]=1;
		return ;
	}
	n_(n-1);
	mul(ans,n);
}

int main(void)
{  
	int n,i;  
	scanf("%d",&n);
	printf("%d!=",n);
	n_(n);
	print_arr(ans);  
	return 0;
}

void mul(int * a,int c)
{   
	int i,x=0;  
	for (i=1;i<=a[0];i++)  
	{    
		a[i]=a[i]*c+x;    
		x=a[i]/mo;    
		a[i]=a[i]%mo;  
	}  
	while(x>0)
	{
		a[++a[0]]=x%mo;
		x=x/mo;
	}
}
	
void print_arr(int * a)
{  
	int i;  
	printf("%d",a[a[0]]);
	for (i=a[0]-1;i>0;i--)    
		printf("%04d",a[i]);
	putchar('\n');
}


