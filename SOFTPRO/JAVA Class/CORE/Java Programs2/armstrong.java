import java.util.*;


class armstrong{


public static void main(String args[]){



int sum = 0;






Scanner sc = new Scanner(System.in);
System.out.println("Enter a three digit number");
int n = sc.nextInt();

int z = n;


while(n>0){

int lastdigit = n%10;
c = lastdigit * lastdigit * lastdigit;
sum = sum+c;
n = n/10;





if(z == sum){
System.out.println(n + " is an armstrong number");

}else{
System.out.println(n + " is NOT an armstrong number");

}


}






}




}