#include<iostream>
#include<cstring>
using namespace std;
int le;
char n[255];
void del(int k)
{
	int i;
	for (i=k+1;i<=le-1;i++) n[i-1]=n[i];
	le--;
}
int main()
{
	int s,i;
	cin>>n;
	cin>>s;
	le=strlen(n);
	while (s>0)
	{
		i=0;
		while (i<le-1&&n[i]<=n[i+1]) i++;
		del(i);
		s--; 
		}
	while (le>1&&n[0]=='0') del(0);
	for (i=0;i<=le-1;i++) cout<<n[i];
	cout<<endl;
	return 0;
}
