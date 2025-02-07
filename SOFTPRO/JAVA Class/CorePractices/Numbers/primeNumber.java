import java.util.*;
class primeNumber{

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter a number");
int a  = sc.nextInt();


for(int i=2; i<=a.length; i++){
if(a % i != 0){
System.out.println(  a + " is a prime number");
}
}

}
}