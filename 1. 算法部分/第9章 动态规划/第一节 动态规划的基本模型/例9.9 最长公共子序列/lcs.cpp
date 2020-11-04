#include<cstdio>
#include<cstring>
#include<string>
using namespace std;
int max(int a,int b){return a>b?a:b;}
const int maxlen=201;
int c[maxlen][maxlen];
int n,i,j,l1,l2;
char x[201],y[201];
string z="";
int main()
{
    scanf("%s\n%s",&x,&y);
    l1=strlen(x); l2=strlen(y);
    for (i=1; i<=l1; i++)
        for (j=1; j<=l2; j++)
            if(x[i-1]==y[j-1]) 
                c[i][j]=c[i-1][j-1]+1;
            else
                c[i][j]=max(c[i-1][j],c[i][j-1]);
    printf("%d\n",c[l1][l2]);

    return 0;
}
