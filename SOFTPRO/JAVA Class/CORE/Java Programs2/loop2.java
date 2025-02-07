import java.util.*;
class loop2{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter a number");
int n = sc.nextInt();


int i=1;

do{
System.out.println(i);
i+=2;
}
while(i<=n);

}
}