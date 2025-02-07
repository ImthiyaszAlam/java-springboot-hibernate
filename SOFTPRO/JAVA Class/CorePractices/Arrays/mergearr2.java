import java.util.*;

class mergearr2{
public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter array size of first Array ");
int n = sc.nextInt();
int a[] = new int[n];

System.out.println("Enter array size of second Array ");
int s = sc.nextInt();
int b[] = new int[s];

int t = n+s;
int c[] = new int[t];
int k =0;

System.out.println("Enter " + n + " Elements ");
for(int i=0; i<n; i++){
a[i] = sc.nextInt();
c[k] = a[i];
k++;
}



System.out.println("Enter " + s + " Elements ");
for(int i=0; i<s; i++){
b[i] = sc.nextInt();
c[k] = b[i];
k++;
}

for(k=0; k<t; k++){
System.out.print(c[k] + " ");
}





}
}