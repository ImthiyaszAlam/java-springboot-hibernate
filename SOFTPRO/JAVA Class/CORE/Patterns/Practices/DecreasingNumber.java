public class DecreasingNumber {
    public static void main(String[] args) {
        for(int i=1; i<=5; i++){
            for(int j=10; j<=15-i; j++){
                System.out.print(j + " ");
            }
            System.out.println();
        }
    }
}
