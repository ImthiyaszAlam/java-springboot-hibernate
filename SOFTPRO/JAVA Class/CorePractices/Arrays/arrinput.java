import java.util.*;
class arrinput{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter size of array");
int size  = sc.nextInt();

int a[] = new int[size];
System.out.println("Enter " + size +  " elements");
for(int i=0; i<size; i++){
a[i] = sc.nextInt();
}

System.out.println("Array is :");

for(int i=0; i<size; i++){
System.out.print( a[i] + " ");
}

}

}