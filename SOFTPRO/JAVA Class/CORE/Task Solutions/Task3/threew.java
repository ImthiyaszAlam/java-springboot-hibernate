import java.util.*;

class threew{


public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter a number");
int n = sc.nextInt();
int i = 7;
int sum = 0;

while(i<=n){
System.out.println(i);
sum+=i;
i+=7;

}
System.out.println("Sum is: " + sum);

}
}