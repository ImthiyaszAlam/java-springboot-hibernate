import java.util.*;


class Overload{

void Area(int l , int b){
int ar = l*b;
System.out.println("area of rectangle is: " + ar);
}

void Area(int s){
int as  = s*s;
System.out.println("area of square is: " + as);
}

void Area(double r ){
double ac = 3.14 * r *r;
System.out.println("area of circle is: " + ac);
}
}



class poly{



public static void main(String args[]){
Scanner sc  = new Scanner(System.in);
int l1 , b1 , s1;
double  r1;
System.out.println("Enter length and breadth of rectangle");
l1 = sc.nextInt();
b1 = sc.nextInt();

System.out.println("Enter side of square");
s1 = sc.nextInt();

System.out.println("Enter radius of circle");
r1 = sc.nextInt();



Overload ob = new Overload();
ob.Area(s1);
ob.Area(r1);
ob.Area(l1,b1);

}
}