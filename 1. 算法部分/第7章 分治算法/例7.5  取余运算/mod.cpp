#include<iostream>
#include<cstdio>
using namespace std;
int b,p,k,a;
int f(int p)                              //利用分治求b^p % k
{
	if (p==0) return 1;                    // b^0 %k=1                         
	int tmp=f(p/2)%k;                       
	tmp=(tmp*tmp) % k;                 // b^p %k=(b^(p/2))^2 % k 
	if (p%2==1) tmp=(tmp * b) %k;        //如果p为奇数，则 b^p % k=((b^(p/2))^2)* b%k
	return tmp;
}
int main()
{
	cin>>b>>p>>k;                           //读入3个数
        int tmpb=b;
        b%=k;
	printf("%d^%d mod %d=%d\n",tmpb,p,k,f(p));     //输出
	return 0;
}


