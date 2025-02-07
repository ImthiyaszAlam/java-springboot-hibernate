import java.util.*;
class perfectNumber{
public static void main(String args[]){
int sum = 0;
Scanner sc = new Scanner(System.in);
System.out.println("Enter a number");
int n = sc.nextInt();

for(int i =1; i<=n/2; i++){
if(n%i ==0){
sum+=i;
}
}
if(sum  == n){
System.out.println(n + ": is a perfect number ");
}else{
System.out.println(n + ": is NOT a perfect number ");
}
}
}