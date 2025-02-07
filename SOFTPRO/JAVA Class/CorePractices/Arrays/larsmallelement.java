import java.util.*;
class larsmallelement{
public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter size of array");
int n = sc.nextInt();

int a[] = new int[n];
System.out.println("Enter " + n + " elements " );
for(int i=0; i<n; i++){
a[i] = sc.nextInt();
}


int l = a[0];
int s = a[0];

for(int j = 0; j<n; j++){
if(l< a[j]){
l = a[j];
}
else if(s> a[j]){
s = a[j];
}
}

System.out.println("Largest number is: " + l);
System.out.println("Smallest number is: " + s);

}
}