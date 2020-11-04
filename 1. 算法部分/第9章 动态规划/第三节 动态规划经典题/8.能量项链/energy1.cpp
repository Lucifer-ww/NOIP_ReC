#include <cstdio>
#include <fstream>
#include <iostream>
using namespace std;

int		N,
		Answer = 0,
	 	A		[300],
		F		[300][300];

int dfs(int i,int j){
	
	if(F[i][j])
		return F[i][j];
		
	if(j - i == 1)
		return 0;
		
	for(int k=i+1;k<j;k++){
		
		int Temp = dfs(i,k)+dfs(k,j)+A[i]*A[k]*A[j];
		F[i][j] = max(Temp,F[i][j]);
		
	}
	
	return F[i][j];
	
}

int main(int argc,char ** argv){
	
	//freopen("energy.in","r",stdin);
	//freopen("energy.out","w",stdout);
	
	scanf("%d",&N);
	
	for(int i=1;i<=N;i++){
		
		scanf("%d",&A[i]);
		A[i + N] = A[i];
				
	}
	
	for(int i=1;i<=N;i++)
		Answer = max(Answer,dfs(i,i+N));
		
	printf("%d",Answer);
		
}
