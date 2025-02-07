import java.util.*;
class s1{

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter your name");
String s = sc.nextLine();


for(int i=0; i<s.length(); i++){
System.out.print(s.charAt(i));

}
System.out.println();
System.out.println(s);
}


}