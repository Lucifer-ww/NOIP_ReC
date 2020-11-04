#include<cstdio>
using namespace std;

const int maxm = 2001, maxn = 31;
int m, n;
int w[maxn], c[maxn];
int f[maxm]; 
int main()
{
    scanf("%d%d",&m, &n);            //背包容量m和物品数量n
    for (int i=1; i <= n; i++)
        scanf("%d%d",&w[i],&c[i]);     //每个物品的重量和价值
   
    for (int i=1; i <= n; i++)                //设f(v)表示重量不超过v公斤的最大价值
        for (int v = m; v >= w[i]; v--)
            if (f[v-w[i]]+c[i]>f[v])
                f[v] = f[v-w[i]]+c[i];
printf("%d",f[m]);                      // f(m)为最优解
return 0;
}


