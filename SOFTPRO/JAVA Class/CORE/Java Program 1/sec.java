import java.util.*;

class sec{


public static int add (){

Scanner sc = new Scanner(System.in);
System.out.println("Enter first Number : ");
int a  = sc.nextInt();

System.out.println("Enter second Number : ");
int b = sc.nextInt();

System.out.println("Enter third Number : ");
int c = sc.nextInt();

int sum = a + b + c;
return sum;

}

public static void main(String args[]){




int sum  = add();
System.out.println( "total sum is " + sum);




} 

}