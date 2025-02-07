import java.util.*;
class bill{



public static void main(String args[]){

Scanner sc  = new Scanner(System.in);
System.out.println("Enter unit");
int u = sc.nextInt();
double b = 0;


if(u >=1  && u<=100){
b = u*0;
}
else if(u>=101 && u<=150){
b = (100*0) + (u-100) *5;
}

else if(u>=151 && u<=220){
b = (100*0) + (50*5) + (u-220) *6;
}


else if(u>220){
b = (100*0) + (50*5) + (70*6) + (u-220) *10;
}
else{
System.out.println("Invalid input");

}

System.out.println("UNIT : "+ u);
System.out.println("BILL : "+b);



}
}