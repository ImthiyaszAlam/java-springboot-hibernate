class code{
int a =10;
int b = 20;

code(int x,int y){
a = x;
b = y;
}

void display(){
System.out.println("Constructor executed");
}

}

class cons1{
public static void main(String args[]){
code c = new code(4,5);
c.display();

}
}