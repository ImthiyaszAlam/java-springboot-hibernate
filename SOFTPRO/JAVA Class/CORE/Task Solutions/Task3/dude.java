import java.util.*;
class dude{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter a 3 digit number");
int n = sc.nextInt();
int og = n;
int sum = 0;


while(n>0){
int last = n%10;
sum+=last;
n = n/10;

}
int cube = sum * sum * sum;

if(og == cube){
System.out.println(og +" is a dudeney number");
}else{
System.out.println(og +" is NOT a  dudeney number");
}




}

}