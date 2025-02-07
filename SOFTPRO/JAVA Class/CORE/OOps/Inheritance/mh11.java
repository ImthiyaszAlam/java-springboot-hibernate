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


class C extends B{
int r,s;


C(){
super();
r = 60;
s = 70;
}

void display2(){
super.display1();
System.out.println(r + " " + s);
}
}



class mh11{
public static void main(String args[]){
C c = new C();
c.display2();
}
}