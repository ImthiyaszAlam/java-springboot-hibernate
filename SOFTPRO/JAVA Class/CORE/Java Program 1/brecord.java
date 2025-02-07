import java.util.Scanner;

class brecord{


public static void main(String args[]){



Scanner sc  = new Scanner(System.in);
String bname;
int bquantity;
double bprice ;
double totalprice;

System.out.println("Enter book name");
bname  = sc.nextLine();

System.out.println("Enter number of books");
bprice  = sc.nextInt();


System.out.println("Enter number of books");
bquantity  = sc.nextInt();



totalprice = bprice * bquantity;

System.out.println("book name is " +bname);
System.out.println( "total number of books =  "  +bquantity);
System.out.println( "total price is =  " + totalprice);




}

}