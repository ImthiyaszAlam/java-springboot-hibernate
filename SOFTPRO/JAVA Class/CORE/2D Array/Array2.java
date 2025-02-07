import java.util.Scanner;

public class Array2 {
        public static void main(String[] args) {
        

       
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter no of rows");
        int n = sc.nextInt();
  
        int a[][] = new int[n][n];
        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
                System.out.println("Input elements");
                a[i][j] = sc.nextInt();

            }
        }

    

        System.out.println("Matrix is ");

        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++){
                if ( i==j ){
                    System.out.print(a[i][j] + " ");
                }
                else{
                    System.out.print("  ");
                }
  
            }
            System.out.println();
        }

    }
}
