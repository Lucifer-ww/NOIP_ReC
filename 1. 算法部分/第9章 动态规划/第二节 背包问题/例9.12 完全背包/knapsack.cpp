#include<cstdio>
using namespace std;
const int maxm=2001,maxn=31;
int n,m,v,i;
int c[maxn],w[maxn];
int f[maxm];

int main()
{
    scanf("%d%d",&m,&n);            //背包容量m和物品数量n
    for(i=1;i<=n;i++)                  //背包容量m和物品数量n
        scanf("%d%d",&w[i],&c[i]);
    for(i=1;i<=n;i++)
        for(v=w[i];v<=m;v++)          //设 f[v]表示重量不超过v公斤的最大价值
            if(f[v-w[i]]+c[i]>f[v])  f[v]=f[v-w[i]]+c[i];
    printf("max=%d\n",f[m]);           // f[m]为最优解
    return 0;
}


