class A{

int a,b;
A(){
a = 10;
b = 20;
}
void display(){
System.out.println(a + " " + b);
}
}



class B extends A{
int p,q;


B(){
super();
p = 30;
q = 40;
}

void display1(){
super.display();
System.out.println(p + " " + q);
}
}



class sh11{
public static void main(String args[]){

B b = new B();
b.display1();
}
}