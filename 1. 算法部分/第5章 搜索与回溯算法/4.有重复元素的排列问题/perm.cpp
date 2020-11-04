/*我实在是想不出能够在任何情况下过这道题的搜索算法，于是毫不犹豫上排列组合*/
/*搜索算法一直是弱菜*/
#include<cstdio>
#include<cstring>
#define mo 10000
char s[501],PNb[501];
int num[256],PNn[501];
int exist[501],ans[5000];
int n;

void InitPN(int n)
{
	memset(PNb,1,sizeof(PNb));
	PNb[0]=0; 
	PNb[1]=0;
	for (int i=2;i<=n;i++)
		if (PNb[i]) {
			PNn[++PNn[0]]=i;
			for (int k=i*2;k<=n;k+=i) {
				PNb[k]=0;
			}
		}
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


int main(void)
{
	scanf("%d",&n);
	while (getchar()!='\n');
	gets(s);
	for (int i=0;i<n;i++) num[s[i]]++;
	InitPN(n);
	for (int i=1;i<=PNn[0];i++) {
		for (int k=PNn[i];k<=n;k*=PNn[i]) {
			exist[i]+=n/k;
		}
	}
	/*for (int i=1;i<=PNn[0];i++)
		printf("%d ",exist[i]);  
	putchar('\n'); */
	for (int nu=0;nu<=255;nu++) {
		if (num[nu]>1) {
			int tmp=num[nu];
			for (int i=1;i<=PNn[0];i++) {
				for (int k=PNn[i];k<=tmp;k*=PNn[i]) {
					exist[i]-=tmp/k;
				}
			}
		}
	}
	/*
	for (int i=1;i<=PNn[0];i++)
		printf("%d ",exist[i]);
	putchar('\n');
	*/
	ans[0]=1;
	ans[1]=1;
	for (int i=1;i<=PNn[0];i++)
	{
		for (int j=1;j<=exist[i];j++)
			mul(ans,PNn[i]);
	}
	print_arr(ans);
	//puts(s);
	return 0;
}

