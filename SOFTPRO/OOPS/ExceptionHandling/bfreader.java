//taking input from user using BufferedReader class

import java.io.*;

class bfreader{
public static void main(String args[]) throws IOException{

BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

System.out.println("Input employee id:");
int id = Integer.parseInt(br.readLine());

System.out.println("Input employee name:");
String name = br.readLine();

System.out.println("Input employee name:");
double salary =Double.parseDouble(br.readLine());

System.out.println("Employee id: " + id);
System.out.println("Employee name: " + name);
System.out.println("Employee salary: " + salary);

}
}