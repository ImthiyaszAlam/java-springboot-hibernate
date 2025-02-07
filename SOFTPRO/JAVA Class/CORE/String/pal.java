import java.util.*;
class pal{

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter sentence");
String og = sc.nextLine();

String rev="";

int i,l;
l = og.length();


for(i=l-1; i>=0; i--){
rev = rev + og.charAt(i);
}

if(og.equalsIgnoreCase(rev)){
System.out.println( og +"  is  a palindrome" );
}else{
System.out.println(og + " is NOT a Palindrome  ");
}

}
}