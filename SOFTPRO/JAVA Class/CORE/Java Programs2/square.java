import java.util.*;
class square{
public static void main(String args[]){


Scanner sc = new Scanner(System.in);
System.out.println("Enter value of x ");
int x = sc.nextInt();

System.out.println("Enter value of n ");
int n = sc.nextInt();

int sum = 0;

for( int i=2; i<=n; i+=2){

double t = Math.pow(x,i);
System.out.println(t);

sum+=t;
System.out.println("Sum is : " + sum);

}


}

}