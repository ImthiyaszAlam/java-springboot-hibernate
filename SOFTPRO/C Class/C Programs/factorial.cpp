#include <stdio.h>

int main(){
	int fact = 1;
	int n;
	printf("Enter a number");
	scanf("%d" , &n);
	while(n > 5){
		fact = fact * n;
		n++;
	}
	printf(" Factorial is  :  %d" , fact);
	
}


