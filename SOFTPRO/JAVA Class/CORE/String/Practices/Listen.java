public class Listen {

    public static void main(String[] args) {
        String s1 = "SILENT";
        String s2 = "LISTEN";
        String s="",k="";
    
        int i;

        for(i=0; i<s1.length();i++){
            s+=s1.charAt(i);
        }

        for(i=0; i<s2.length();i++){
            k+=s2.charAt(i);
        }

        if (s.equals(k)) {
            System.out.println("Available");
        }else{
            System.out.println("not available");
        }


    }
    


}
