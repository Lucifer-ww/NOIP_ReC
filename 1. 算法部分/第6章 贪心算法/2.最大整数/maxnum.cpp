#include<cstdio>
#include<cstring>
char s[100][255];
int l[100];
int main(void)
{
	int n;
	char tmp1[1000],tmp2[1000];
	scanf("%d",&n);
	for (int i=0;i<n;i++)
	{
		scanf("%s",s[i]);
		l[i]=strlen(s[i]);
	}
	for (int i=1;i<n;i++)
		for (int j=0;j<n-i;j++)
		{
			strcpy(tmp1,s[j]);
			strcat(tmp1,s[j+1]);
			strcpy(tmp2,s[j+1]);
			strcat(tmp2,s[j]);
			if (strcmp(tmp1,tmp2)<0)
			{
				strcpy(tmp1,s[j]);
				strcpy(s[j],s[j+1]);
				strcpy(s[j+1],tmp1);
			}
		}
	for (int i=0;i<n;i++)
		printf("%s",s[i]);
	putchar('\n');
	return 0;
}

