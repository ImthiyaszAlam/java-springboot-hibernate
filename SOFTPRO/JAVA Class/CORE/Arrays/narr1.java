import java.util.*;
class narr1{



public static void main(String args[]){

Scanner sc = new Scanner(System.in);
int i,n;

System.out.println("Enter size of array");
n = sc.nextInt();
int a[] = new int[n];


for(i=0; i<n; i++){
System.out.println("Enter element");
a[i] = sc.nextInt();
}

for( i=0; i<n; i++){

if(a[i] % 2 ==0){

System.out.print(a[i] + " ");

}
}




}

}