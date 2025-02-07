class shape{
int a,b;

shape(){
a =10;
b = 20;
}

void display(){
System.out.println(" Shape class " + a + " " + b);
}
}


class square extends shape{
int c,d;

square(){
c =30;
d = 40;
}

void display1(){
super.display();
System.out.println(" Square class " + c + " " + d);
}
}



class rectangle extends shape{
int e,f;

rectangle(){
e =60;
f = 50;
} 

void display2(){
System.out.println(" Rectangle class" + e + " " + f);
}
}

class hi{
public static void main(String args[]){
 rectangle r = new rectangle();
r.display2();

 square s = new square();
s.display1();

}
}