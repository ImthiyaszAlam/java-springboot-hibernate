import java.util.*;
class sevw{

public static void main(String args[]){
Scanner sc = new Scanner (System.in);
System.out.println("Enter limit");
int n = sc.nextInt();

int term = 0;
int i=1;



while(i<=n){

System.out.println(term);

if(i<n){
System.out.println(", ");
}

term = term * i + 1;
i++;
}

}
}