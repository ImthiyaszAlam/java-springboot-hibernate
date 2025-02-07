import java.util.*;
class replaceWord{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter sentence");
String str = sc.nextLine();

System.out.println("Enter word to get replced");
String old = sc.nextLine();

System.out.println("Enter new  word to replace with");
String ne = sc.nextLine();

int p=0;
str = str+" ";
String word = "";


for(int i=0; i<str.length(); i++){
if(str.charAt(i) == ' '){
word = str.substring(p,i);
if(word.equalsIgnoreCase(old)){
System.out.print(ne + " ");
}else{
System.out.print(word + " ");
}
p = i+1;
}
}


}
}