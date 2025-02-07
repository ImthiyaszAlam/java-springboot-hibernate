class A{

public void m1(){
System.out.println("m1 method of class A");
}
public void m2(){
System.out.println("m2 method of class A");
}
}

class B extends A{
public void m1(){
System.out.println("m1 method of class B");
}
public void m3(){
System.out.println("m3 method of class B");
}
}




class Overriding{
public static void main(String args[]){
B b = new B();

b.m1();
b.m2();
b.m3();

}


}



