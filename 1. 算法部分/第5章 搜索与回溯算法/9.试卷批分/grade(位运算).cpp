#include<cstdio>
#define Num 3

int BtoD(char *);
int cmp(int);
int cul(int,int);

int score[Num],opt[Num];

int main(void)
{
	score[0]=7;
	score[1]=5;
	score[2]=3;
	
	opt[0]=BtoD("0010100100");
	opt[1]=BtoD("0111010111");
	opt[2]=BtoD("0111000101"); 
	
	int i;
	for(i=0;i<1024;i++)
		{
			if (0==cmp(i)) break;
		}
	
	printf("%d\n",10*(10-cul(i,BtoD("0011100111"))));
	return 0;
}

int BtoD(char * num)
{
	int tmp=0,f=1,i=-1;
	while (num[++i]!='\0')
	{
		tmp+=f*(num[i]-48);
		f<<=1;
	}
	return tmp;
}

int cmp(int std)
{
	for (int i=0;i<Num;i++)
	{
		if (10-cul(std,opt[i])!=score[i]) {
			return -1;
			}
	}
	return 0;
}

int cul(int std,int opt)
{
	int count=0;
	opt^=std;
	while (opt!=0)
	{
		if ((opt&1)==1) count++;
		opt>>=1;
	}
	return count;
}
