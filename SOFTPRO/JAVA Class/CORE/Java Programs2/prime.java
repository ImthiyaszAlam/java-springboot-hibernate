import java.util.*;

class prime{

public static void main(String args[]){

int n = 5;
int c = 0;
for(int i=1; i<=n; i++){

if(n%i ==0 ){
c = c+1;

if(c == 2){
System.out.println("Prime number");
}else{
System.out.println("Not a Prime number");

}




}

}
}