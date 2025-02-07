public class File {
    public static void main(String[] args) {
        int count = 0;
        String word;
        int p=0;
        String s1 = "C:/Users/alif8/OneDrive/Desktop/JAVA Class/String";

        for (int i = 0; i < s1.length(); i++) {
            if (s1.charAt(i) == '/') {
                word = s1.substring(p, i);
                count++;

                if (count==0) {
                    p=i+1;
                }

                if (count == 1) {
                    System.out.println(word + " is a C File");
                } else if (count == 2) {
                    System.out.println(word + " is a User file");
                } else if (count == 3) {
                    System.out.println(word + " is a Desktop file");
                } else {
                    System.out.println(word + " is a default file");
                }
            }
        }
    }
}

