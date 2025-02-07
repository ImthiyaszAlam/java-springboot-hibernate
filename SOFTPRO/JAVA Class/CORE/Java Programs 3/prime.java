import java.util.*;
class prime{

public static void main(String args[]){

int i,j,n=100,c=0;
for( j=1; j<=n; j++){

int k = j;
c = 0;

for(i=1; i<=k; i++){
if(k%i ==0){
c++;
}
}


}

if(c == 2){
System.out.println(n);
}






}

}