import java.util.*;

class linear{

public static void main(String args[]){
int roll [] = {1,2,3,4,5};
int per[] = {40,50,60,70,80};

int i,r,f=0;


Scanner sc = new Scanner(System.in);
System.out.println("Enter roll");
r = sc.nextInt();

for(i=0; i<5; i++){
if(r == roll[i]){
f = 1;
break;
}
}

if(f == 1){
System.out.println("Roll number" + roll[i]);
System.out.println("Percentage " + per[i] + " % ");
}
else{
System.out.println("Roll number NOT found");

}



}
}