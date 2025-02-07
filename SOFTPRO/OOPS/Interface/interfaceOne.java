interface MyInterface{
void m1(); 
void m2();
void m3();

}



class interfaceOne implements MyInterface {

public void m1(){
System.out.println("Message from method m1");
}

public void m2(){
System.out.println("Message from method m2");
}

public void m3(){
System.out.println("Message from method m3");
}
public static void main(String args[]){
interfaceOne it = new interfaceOne();
it.m1();
it.m2();
it.m3();

}
}