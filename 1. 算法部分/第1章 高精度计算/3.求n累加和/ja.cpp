#include<iostream>
using namespace std;
int n,i,j,a[15],b[15],l=15;
int main()
{
	cin>>n; b[1]=6; 
	for(i=4; i<=n; i++)
	{
		a[1]=i%100000%10000%1000%100%10;
		a[2]=i%100000%10000%1000%100/10;
		a[3]=i%100000%10000%1000/100;
		a[4]=i%100000%10000/1000;
		a[5]=i%100000/10000;
		a[6]=i/100000;
		for(j=1; j<=l; j++)
		{
			b[j]=b[j]+a[j];
		    if(b[j]>9)
		    {
				b[j]=b[j]%10;
			    b[j+1]=b[j+1]+1;
		    }
		}
	}
	while((l>1)&&(b[l]==0)) l--;
	for(i=l; i>=1; i--) cout<<b[i];
}
