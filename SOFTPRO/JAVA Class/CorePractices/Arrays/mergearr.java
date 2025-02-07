import java.util.*;

class mergearr{

public static void main(String args[]){

int a[] = {1,2,3};
int b[] = {4,5,6};
int c[] = new int[6];
int k = 0;

for(int i=0; i<3; i++){
c[k] = a[i];
k++;
}

for(int j=0; j<3; j++){
c[k] = b[j];
k++;
}

for(k=0; k<6; k++){
System.out.print(c[k] + " ");
}


}
}
