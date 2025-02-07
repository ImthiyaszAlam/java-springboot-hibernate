import java.util.*;

class vowelsInString{

public static void main(String args[]){
Scanner sc = new Scanner(System.in);
System.out.println("Enter a sentence");
String str  = sc.nextLine();

int vowelCount = 0;
String vowelLetter = "";

char[] chars = str.toLowerCase().toCharArray();

for(int i=0; i<chars.length; i++){
char c = chars[i];
if(c == 'a'|| c =='e'|| c == 'i'|| c =='o'|| c =='u'){
vowelCount++;
vowelLetter+=c;
}
}

System.out.println("No of vowels: " +vowelCount );
System.out.println("Letters: " +vowelLetter  );


}
}