import java.util.*;
class palsen{

public static void main(String args[]){

Scanner sc = new Scanner(System.in);
System.out.println("Enter sentence");
String sen = sc.nextLine();


int i,l,p=0,c=0;
l = sen.length();
String ls="",lsrev="";


for(i=l-1; i>=0; i--){
if(sen.charAt(i) == ' '){
ls = sen.substring(p,i);

for(i=0; i<ls.length()-1;i++){
lsrev = lsrev +  ls.charAt(i);

if(ls.equalsIgnoreCase(lsrev)){
System.out.println(ls +" is palindrome");
c++;
}
}

}


System.out.println( " total palindrome is " + c );

p+=1;
}



}



}