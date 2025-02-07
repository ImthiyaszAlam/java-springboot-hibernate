class A{
void display1(){
System.out.println("First class");
}
}

class B extends A{

void display2(){
super.display1();
System.out.println("Second class");
}
}

class C extends B{

void display3(){
super.display2();
System.out.println("Third class");
}
}



class mh{
public static void main(String args[]){
C c = new C();
c.display3();
}
}