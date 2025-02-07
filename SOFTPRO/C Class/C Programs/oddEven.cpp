#include <stdio.h>
int main(){
	int n;
	printf("Enter a number");
	scanf("%d" , &n);
	
	if(n % 2 == 0){
		printf( "  n is even number : %d" ,n);
	}
	else{
		printf("n is odd");
	}
}
