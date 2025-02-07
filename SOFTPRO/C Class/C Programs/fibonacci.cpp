#include <stdio.h>
int main(){
	int n1=0;
	int n2=1;
	int n3;
	int n;
	int i;
	
	printf("terms in series");
	scanf("%d" , n);
	printf("%d %d " , n1,n2);
	for(i=1;i<=n-2;i++){
		n3 = n1+n2;
		printf("%d" ,n3);
		n1 = n2;
		n2 = n3;
	}
}
