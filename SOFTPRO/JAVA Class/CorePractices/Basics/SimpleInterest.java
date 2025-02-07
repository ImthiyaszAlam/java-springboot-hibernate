import java.util.Scanner;

class SimpleInterest{
    public static void main(String args[]){

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter pricipal amount");
        double p = sc.nextDouble();
        System.out.println("Enter rate ");
        int r = sc.nextInt();
        System.out.println("Enter time duration");
        int t = sc.nextInt();

        int simpleInterest =(int) ((p*r*t) * 100);

        System.out.println("Simple interest of given data is "+simpleInterest);
    }
}