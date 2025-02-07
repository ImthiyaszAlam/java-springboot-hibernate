class A{
void display(){
System.out.println("Parent class");
}
}

class B super A{
void display1(){
System.out.println("Child class ");
}
}


class sh{

public static void main(String args[]){
B b = new B();
b.display();
b.display1();

}
}