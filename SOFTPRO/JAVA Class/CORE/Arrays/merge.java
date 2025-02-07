import java.util.*;
class merge
{
public static void main(String args[])
{
Scanner sc = new Scanner(System.in);
int a[]={2,3,4,5,7};
int b[]={8,9,10,11,12};
int c[]=new int[10];

int i,k=0;
for(i=0; i<5; i++)
{
c[k]=a[i];
k++;
}

for(i=0; i<5; i++)
{
c[k]=b[i];
k++;
}



for(i =0; i<10; i++){
System.out.print(c[i]+" ") ;
}
}
}