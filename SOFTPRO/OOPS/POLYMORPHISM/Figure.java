import java.util.*;
class Figure{


public int area(int s){
return (s*s);
}

public int area(int l, int b){
return (l*b);
}




public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter side of square");
int s = sc.nextInt();

System.out.println("length of rectrangle");
int l = sc.nextInt();

System.out.println("breadth of rectrangle");
int b = sc.nextInt();


Figure f = new Figure();
int a = f.area(s);
System.out.println("Area of square: " + a);
int c = f.area(l,b);
System.out.println("Area of rectangle:" + c);





}
}