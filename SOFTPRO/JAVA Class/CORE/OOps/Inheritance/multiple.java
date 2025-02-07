class Developers{
int a,b;
Developers(){
a = 450000;
b = 2670000;
}

void salary4(){
System.out.println("Developers salary ranges from: "+ a + " to :" +b);
}
}

class Web extends Developers{
int a,b;
Web(){
a = 10000;
b = 20000;
}

void salary3(){
super.salary4();
System.out.println("web deve salary ranges from: "+ a + " to :" +b);
}
}

class Android extends Web{
int a,b;
Android(){
a = 10000;
b = 20000;
}

void salary2(){
super.salary3();
System.out.println("dataEngineers salary ranges from: " +a + " to :" +b);
}
}

class dataEngineers extends Android{
int a,b;
dataEngineers(){
a = 10000;
b = 20000;
}

void salary1(){
super.salary2();
System.out.println("dataEngineers salary ranges from: " +a + " to :" +b);
}
}


class analyst extends dataEngineers{
int a,b;
analyst(){
a = 10000;
b = 20000;
}

void salary(){
super.salary1();
System.out.println("Analyst salary ranges from: " + a + " to :" +b);
}
}






class multiple{
public static void main(String args[]){
analyst a = new analyst();
a.salary();
}
}