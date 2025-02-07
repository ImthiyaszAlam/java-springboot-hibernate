import java.util.*;

class Shape{
int s;
public void setValue(int side){
s = side;
}
}



class Square extends Shape{
public int area(){
return s*s;
}
}

class Cube extends Shape{
public int volume(){
return s*s*s;
}
}


class hierarchical{
public static void main(String args[]){
Scanner sc = new Scanner(System.in);

System.out.println("Enter side");
int side  = sc.nextInt();




Square s = new Square();
s.setValue(side);
int ar = s.area();
System.out.println("Volume of cube is: " + ar);



Cube c = new Cube();
c.setValue(side);
int v = c.volume();
System.out.println("Volume of cube is: " + v);



}
}