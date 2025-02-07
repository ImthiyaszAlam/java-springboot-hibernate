import java.util.*;
import mypack.myUtil;

class test{
public static void main(String args[]){
int a,b,s,g;
Scanner sc = new Scanner(System.in);
System.out.println("Enter first number");
a = sc.nextInt();
System.out.println("Enter first number");
b = sc.nextInt();

myUtil m = new myUtil();
s =  m.add(a,b);
System.out.println("sum: "+s);
g = m.greatest(a,b);
System.out.println("greatest: "+g);
}
}