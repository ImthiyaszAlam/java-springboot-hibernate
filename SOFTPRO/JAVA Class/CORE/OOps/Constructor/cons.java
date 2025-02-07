class A{
int a,b;
A(int x,int y){
a= x;
b = y;
}

void display(){
System.out.println(a + " \t" + b);
}
}


class cons{

public static void main(String args[]){
A a  = new A(4,5);
a.display();
}

}