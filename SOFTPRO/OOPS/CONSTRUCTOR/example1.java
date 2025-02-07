import java.util.*;

class Student{
int rollNumber;
String name;
double fee;
Student(int a, String b, double c){
rollNumber = a;
name = b;
fee = c;

}

public void display(){
System.out.println("Roll Number: " +rollNumber );
System.out.println("Name: " +name );
System.out.println("Fee: " +fee );
}
}
class example1{
public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter roll number: " );
int x = sc.nextInt();

System.out.println("Enter name: " );
String y = sc.next();

System.out.println("Enter fee: " );
double z = sc.nextDouble();

Student s = new Student(x,y,z);
s.display();
}
}