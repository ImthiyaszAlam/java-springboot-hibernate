class expert{
int a;
expert(int x){
a = x;
}
void earn(){
System.out.println("Expert programmers make: " + a);
}
}


class pro extends expert{
int b;
pro(int c){
super();
b = c;
}
void earn(){
System.out.println("pro programmers make: " + a);
}
}

class noob extends expert{
int a;
noob(int x){
a = x;
}
void earn(){
System.out.println("noob programmers make: " + a);
}
}

class myClassDev extends noob{
int a;
myClassDev(int x){
a = x;
}
void earn(){
System.out.println("my class  programmers make: " + a);
}
}


class hybrid{
public static void main(String args[]){
myClassDev m = new myClassDev(20000);
m.earn();
}
}