import java.util.*;

class threef{


public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter a number");
int n = sc.nextInt();
int sum = 0;

for(int i=7; i<=n; i+=5){
System.out.println(i);
sum+=i;

}
System.out.println("Sum is: " + sum);

}
}