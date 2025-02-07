import java.util.Scanner;

public class RectangleArea {

    public static void areaOfRectangle(int a, int b){


         int area = a*b;
         System.out.println("Area of rectangle is "+ area);

         
        int perimeter = 2*(a+b);
        System.out.println("perimeter of rectangle is " + perimeter);

        if (a == b) {
            int area1 = a*a;
            System.out.println("Area of square is "+ area1);
        }
    
    }
    
    public static void main(String[] args) {
    
        RectangleArea rectangleArea = new RectangleArea();
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter length of reectangle");
         int a = sc.nextInt();
        System.out.println("Enter width of rectangle");
        int  b = sc.nextInt();
        rectangleArea.areaOfRectangle(a,b);



    }
}
