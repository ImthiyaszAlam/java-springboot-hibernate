import java.util.Scanner;

/**
 * Array1
 */
public class Array1 {

    public static void main(String[] args) {
        

       
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter no of rows");
        int n = sc.nextInt();

        System.out.println("Enter no of cols");
        int s = sc.nextInt();
  
        int a[][] = new int[n][s];
        for(int i=0; i<n; i++){
            for(int j=0; j<s; j++){
                System.out.println("Input elements");
                a[i][j] = sc.nextInt();

            }
        }

    

        for(int i=0; i<n; i++){
            for(int j=0; j<s; j++){
                System.out.print(a[i][j] + " ");
            }
            System.out.println();
        }

    }
}