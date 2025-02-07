import java.util.*;
class linearSearch{
public static void main(String args[]){

int roll[] = {1,2,3,4,5};
int percent[] = {40,50,60,70,80};
Scanner sc = new Scanner(System.in);
System.out.println("Enter roll number");
int r = sc.nextInt();
int i,f=0;
for(i=0; i<5; i++){
if(r == roll[i]){
f = 1;
break;
}
}

if(f == 1){
    System.out.println("Roll number is : " + roll[i]);
    System.out.println("Percentage of " + roll[i] + " is: " + percent[i] + "%") ;
}else{
System.out.println("Roll number not found");
}




}
}