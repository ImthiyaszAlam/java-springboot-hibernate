interface school{

void registartion();
void feeSubmission();
void batchAllotment();

}

abstract class test1 implements school{
public void registartion(){
System.out.println("Registartion work done");
}
}

abstract class test2 extends  test1{
public void feeSubmission(){
System.out.println("feeSubmission work done");
}
}

class test3 extends  test2{
public void batchAllotment(){
System.out.println("batchAllotment work done");
}
}



class projectInterface extends test3 {
public static void main(String args[]){
test3 t = new test3();
t.batchAllotment();
t.feeSubmission();
t.registartion();
}

}