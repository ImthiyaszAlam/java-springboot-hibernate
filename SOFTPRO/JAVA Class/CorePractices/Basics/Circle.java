import java.util.Scanner;

public class Circle {

    public static void areaCircle(int r){

        double pi = 3.14;
        int area = (int) (pi * r*r);

        System.out.println("area of circle is "+ area );
        int circumference =(int) (2 * pi * r);
        System.out.println("circumference of circle is " + circumference);

    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter radius of circle");
        int a = sc.nextInt();

        Circle circle = new Circle();
        circle.areaCircle(a);
    }
}
