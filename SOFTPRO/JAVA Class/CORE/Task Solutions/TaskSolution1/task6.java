import java.util.Scanner;

class task6{

public static void main(String args[]){



Scanner sc = new Scanner(System.in);
System.out.println("Enter seconds");
int inputSecond = sc.nextInt();

int hour  = inputSecond / 3600 ;
int remainingSecond = inputSecond % 3600;
int minute  = remainingSecond /  60;
int second = remainingSecond % 60;

System.out.println(hour + " hour " + minute + " mins  " + second + " secs" );



}


}