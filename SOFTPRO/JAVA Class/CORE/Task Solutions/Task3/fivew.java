import java.util.*;
class fivew{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
int n = sc.nextInt();
int sum = 0;
int i= 1;


while(i<=n){
System.out.print( (i*i) + 1 );
sum=+i*i;
i+=1;

if(i<n){
System.out.print("+ " );
}

}
}

}