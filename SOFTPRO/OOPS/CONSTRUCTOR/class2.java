import java.util.*;
class employee{
int empid;
String empname;
double salary;

public void setValue(int eid, String ename, double sal){
empid = eid;
empname = ename;
salary = sal;
}

public void display(){
System.out.println("Employee id: " + empid);
System.out.println("Employee name: " + empname);
System.out.println("Employee salary " + salary);

}


}

class class2{

public static void main(String args[]){
employee e = new employee();
Scanner sc = new Scanner(System.in);
System.out.println("Enter your id");
int a  = sc.nextInt();
System.out.println("Enter your name");
String b = sc.nextLine();
System.out.println("Enter your salary");
double c = sc.nextDouble();
e.setValue(a,b,c);
e.display();
}
}