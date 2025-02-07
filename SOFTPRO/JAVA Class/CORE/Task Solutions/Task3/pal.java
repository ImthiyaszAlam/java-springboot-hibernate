import java.util.*;
class pal{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter more than 3 digit number");
int n = sc.nextInt();
int org = n;

int rev = 0;

while(n>0){
int digit =  n%10;
rev = rev * 10 + digit;
n = n/10;


}

System.out.println(rev);

if(org == rev){
System.out.println("Palindrome");
}else{
System.out.println("NOT Palindrome");
}


}

}