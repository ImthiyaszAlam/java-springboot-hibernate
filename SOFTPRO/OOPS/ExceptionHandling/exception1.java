//division of two numbers
import java.util.*;

class exception1{
public static void main(String args[]){

Scanner sc = new Scanner(System.in);
try{

System.out.println("Enter first Number");
int a = sc.nextInt();
System.out.println("Enter second Number");
int b = sc.nextInt();
int c = a/b;
System.out.println(c);
}
catch(InputMismatchException e1){
System.out.println("Enter numbers only");
}

catch(ArithmeticException e1){
System.out.println("Are you trying to divide by zero");
}

finally{
System.out.println("Finally block executed");
}

}
}