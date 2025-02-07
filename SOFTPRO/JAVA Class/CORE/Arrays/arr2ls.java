import java.util.*;
class arr2ls{

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
int i,n,l,s;

System.out.println("Enter size of array");
n = sc.nextInt();

int a[] = new int[n];

for(i=0; i<n; i++){
System.out.println("Enter element");
a[i] = sc.nextInt();

}

l = a[0];
s = a[0];


for(i =0; i<n; i++){
if(l<a[i]){
l = a[i];
}
else if(s>a[i]){
s = a[i];
}
}

System.out.println("Largest element is " + l);
System.out.println("Smallest  element is " + s);


















}

}