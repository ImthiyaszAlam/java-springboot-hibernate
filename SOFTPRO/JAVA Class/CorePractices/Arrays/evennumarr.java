import java.util.*;
class evennumarr{
public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter size of array: ");
int size = sc.nextInt();

int a[] = new int[size];
System.out.println("Enter" + size + " elements"  );

for(int i=0; i<size; i++){
a[i] = sc.nextInt();

}


System.out.print("Even numbers are : ");
for( int i=0; i<size; i++){
if(a[i] % 2 == 0){

System.out.print(a[i] + " " );
}
}

System.out.print("Odd numbers are : ");
for( int i=0; i<size; i++){
if(a[i] % 2 != 0){

System.out.print(a[i] + " " );
}
}


}

}