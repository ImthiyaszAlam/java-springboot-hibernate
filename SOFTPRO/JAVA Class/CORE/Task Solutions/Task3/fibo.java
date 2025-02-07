import java.util.*;

class fibo{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter limit");
int n = sc.nextInt();


int a = 0;
int b = 1;


for(int i=a; i<=n; i++){

int c = a+b;
System.out.println(c);
a = b;
b = c;


}

}

}