import java.util.*;
class stringInput{
public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Input a String ");
String str = sc.nextLine();
int count  = 0;
for(int i=0; i<str.length(); i++){
System.out.print(str.charAt(i) + " ");
count++;
}

System.out.println("No of times loops executed : " + count);
}
}