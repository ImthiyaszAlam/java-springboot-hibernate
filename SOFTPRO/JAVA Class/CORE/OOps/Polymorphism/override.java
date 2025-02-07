class A {
void life(){
System.out.println("Good life ");
}
}

class B extends A {
void life(){
System.out.println("Bad  life ");
}
}

class override{
public static void main(String args[]){
B b  = new B();
b.life();
}
}