import java.util.*;

class digitsum{


public static void main(String args[]){

int s=0 , k;
Scanner sc = new Scanner (System.in);
System.out.println("Enter n");
int n = sc.nextInt();





while(n>0){

k = n%10;
s = s+k;
n = n/10;


}


System.out.println("Sum is " +  s);


}
}