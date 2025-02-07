import java.util.*;
class bubble{


public static void main(String args[]){

int n,i,j,c;
Scanner sc = new Scanner(System.in);
System.out.println("Enter size of array");
n = sc.nextInt();

int a[] = new int[n];
System.out.println("Enter " + n + " elements");
for(i =0; i<n; i++){
a[i] = sc.nextInt();
}


for(i=0; i<n; i++)
{
for(j=0; j<n-1-i; j++)
{
if(a[j] > a[j+1])
{
c = a[j];
a[j] = a[j+1];
a[j+1] = c;
}
}
}

System.out.println("Sorted array is ");

for(i=0; i<n; i++){
System.out.print( a[i] + " ");
}


}
}