#include <stdio.h>
int main(){
	
	int sum=0;
	int i;
	int list[10] ;
	printf("Enter 10 numbers\n");
	for(i=0; i<9; i++){
		scanf("%d" , &list[i]);
		sum = sum + list[i];
	}
	printf(" sum is : %d" , sum);
}
