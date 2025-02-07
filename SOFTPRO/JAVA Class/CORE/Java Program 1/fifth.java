import java.util.*;

class fifth{


public  int add (int x , int y ,  int z){
int sum;
sum = x+y + z;
return sum;
}

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter first Number : ");
int a  = sc.nextInt();

System.out.println("Enter second Number : ");
int b = sc.nextInt();

System.out.println("Enter third Number : ");
int c = sc.nextInt();


fifth f = new fifth();
int sum  = f.add(a,b,c);



System.out.println( "total sum is " + sum);
} 

}