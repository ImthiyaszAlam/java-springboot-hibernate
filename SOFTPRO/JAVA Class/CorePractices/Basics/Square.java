import java.util.Scanner;

public class Square {






    public static void squareArea(int a){
        int area  = a*a;
        int perimeter = 4*a;
        System.out.println("area of square is : "+ area);
        System.out.println("perimeter of square is : "+ perimeter);

    }
    public static void main(String[] args) {
        Square square = new Square();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter side length of square");
        int a = sc.nextInt();
        square.squareArea(a);
    }
}
