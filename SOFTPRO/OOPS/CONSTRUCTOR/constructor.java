import java.util.*;
class A{
int l,b;
A(int x, int y){
 l = x;
 b = y;
}

public int area(){
return l*b;
}
}


class constructor{
public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter length");
int l = sc.nextInt();
System.out.println("Enter breadth : ");
int b = sc.nextInt();

A a  = new A(l,b);
int c = a.area();
System.out.println("Area: " + c);
}

}