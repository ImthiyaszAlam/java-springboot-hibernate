import java.util.*;

class p1{

public static void main(String args[]){

Scanner sc  = new Scanner(System.in);
System.out.println("Enter a number");
int n = sc.nextInt();


if(n%5 == 0 && n%7 ==0){
System.out.println(n + "divisible by 5 and by 7 as well");

}
else if(n%5 == 0 && n%7 !=0){
System.out.println(n + "divisible by 5 and by 7 as well");

}

}

}