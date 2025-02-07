import java.util.*;
class sixf{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter limit");
int n = sc.nextInt();


for(int i=1; i<=n ;i++){
System.out.print(  (i*i) -1 );

if(i<n){
System.out.print("+" );
}

}
}

}