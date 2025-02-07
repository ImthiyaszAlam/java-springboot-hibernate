import java.util.*;

class merging{

int i,n,o;


public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter size of first array");
n = sc.nextInt();

int s = n+o;
int k[] = new int[s];

int a[] = new int[n];
System.out.println("Enter" + n + "Elements");
for(i=0; i<n; i++){
a[i] = sc.nextInt();
k[i] = a[i];
}


System.out.println("Enter size of first array");
o = sc.nextInt();
int b[] = new int[o];
System.out.println("Enter" + o + "Elements");
for(i=0; i<o; i++){
b[i] = sc.nextInt();
k[i] = b[i];
}

System.out.println("Merged Array is ");


for(i=0; i<n; i++){
System.out.print(k[i] + " ");
}

}
}