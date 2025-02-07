import java.util.*;

class sev{


public static void add (int x , int y ,  int z){

int sum = x+y+z;
System.out.println(sum);

}

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter first Number : ");
int a  = sc.nextInt();

System.out.println("Enter second Number : ");
int b = sc.nextInt();

System.out.println("Enter third Number : ");
int c = sc.nextInt();

sev s  = new sev();
s.add(a,b,c);


} 

}