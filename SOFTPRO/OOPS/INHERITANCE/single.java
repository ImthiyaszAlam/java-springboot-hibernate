class Rundog{
public void bark(){
System.out.println("Sheru");
System.out.println("Bhau..bhau");
}
}

class Bulldog extends Rundog{
public void growl(){
System.out.println("Tuffy");
System.out.println("Gurr..Gurr");
}
}

class single{
public static void main(String args[]){
Bulldog dog = new Bulldog();
dog.bark();
dog.growl();
}
}