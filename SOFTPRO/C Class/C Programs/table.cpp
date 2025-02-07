#include <stdio.h>;
int main(){
	int n,i,t;
	printf("Enter a number");
	scanf("%d",&n);
	
	for(int i=1;i<=10;i++){
		 t = n*i;
		printf("%d * %d = %d\n " , n,i ,t );
	}

}
