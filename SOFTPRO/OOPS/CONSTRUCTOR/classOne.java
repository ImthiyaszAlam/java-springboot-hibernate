import java.util.*;
class A {
void sayHello(String s){
System.out.println("Hello " + s);
}
}

class classOne{
public static void main(String args[]){
A a  = new A();
Scanner sc = new Scanner(System.in);
System.out.println("Enter your name here");
String name  = sc.nextLine();
a.sayHello( "My name is: " +name);

}

}