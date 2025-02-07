import java.util.*;
class program1{

public static void main(String args[]){


String s, rw, nw,w;
int i,l;
int p=0;


Scanner sc = new Scanner(System.in);
System.out.println("Input a senetence");
 s = sc.nextLine();

System.out.println("word to replace");
 rw = sc.nextLine();

System.out.println("new word");
 nw = sc.nextLine();

s = s + ' ';
l = s.length();


for(i=0; i<l; i++){
if(s.charAt(i) == ' '){
w = s.substring(p,i);
if(w.equalsIgnoreCase(rw)){
System.out.print(nw + " ");
}
else{
System.out.print(w + " ");
}
p=i+1;

}
}




}

}