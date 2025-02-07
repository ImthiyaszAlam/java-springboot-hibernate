import java.util.*;
class calculator{
public static void main(String args[]){

int ans;
Scanner sc = new Scanner(System.in);


System.out.println("Enter first number");
int a = sc.nextInt();


System.out.println("Enter operator");
char c = sc.next().charAt(0);


System.out.println("Enter second number");
int b = sc.nextInt();



if(c ==  '+'){
ans = a+b;
System.out.println(ans);
}

else if(c == '-'){
ans = a-b;
System.out.println(ans);
}

else if(c == '*'){
ans = a*b;
System.out.println(ans);
}

else if(c == '/'){
ans = a/b;
System.out.println(ans);
}

else if(c == '%'){
ans = a%b;
System.out.println(ans);
}

else{
System.out.println("Invalid");
}





}


}