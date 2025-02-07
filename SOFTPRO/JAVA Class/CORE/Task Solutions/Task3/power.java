import java.util.*;

class power{

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter value of x");
int x = sc.nextInt();
System.out.println("Enter square limit");
int n = sc.nextInt();

int sum = 0;

for(int i=2; i<=n; i+=2){
int poww = (int)Math.pow(x,i);
System.out.print(poww );
sum+=poww;

if(i<n){
System.out.print(",");
}
}
System.out.println();

System.out.println("sum : "+ sum);






}
}