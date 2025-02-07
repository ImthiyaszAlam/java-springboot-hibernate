public class Pal {
  
        public static void main(String[] args) {
            String s1 = "Malayalam,Anna,aea,Autftyfdy";
            int i,j,count=0,p=0;
            String rev="",word;
            s1 = s1+ ",";
    
            for(i=0; i<s1.length(); i++){
                if (s1.charAt(i) == ',') {
                    word = s1.substring(p, i);
                    rev = "";
                    for(j=word.length()-1; j>=0; j--){
                        rev+= word.charAt(j);
                    }
    
                    if (word.equalsIgnoreCase(rev)) {
                        System.out.println(word + " is a palindrome");
                        count++;
                    }
                    else{
                        System.out.println(word +" is not a palindrome");
                    }
    
        
    
                    p = i+1;
    
    
                }

           
            }

            System.out.println(" total number of palindrome is " + count);
     
        }

}
