import java.util.*;
class vowel{

public static void main(String args[]){
String s,os;
int i,l,p=0,c=0;
char ch;


Scanner sc = new Scanner(System.in);
System.out.println("Enter a sentence");
s = sc.nextLine();
l = s.length();
s = s+ " ";




for(i=0; i<l; i++){
if(s.charAt(i) == ' '){
os = s.substring(p,i);
ch = os.charAt(0);
if(ch=='A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U' || ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u'){
System.out.println(os + " ");
c++;

}
p+=1;

}

}

System.out.print("No of words start with vowel : "+c);










}
}