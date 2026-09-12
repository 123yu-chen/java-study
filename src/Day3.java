import java.util.Scanner;

public class Day3 {
    public static void main(String[] args){
        //练习1，比身高
       /* Scanner sc=new Scanner(System.in);
        System.out.println("请输入你的身高（m）：");
        double height1=sc.nextDouble();
        System.out.println("请输入你的好友身高（m）：");
        double height2=sc.nextDouble();
        if(height1>height2){
            System.out.println("你更高");
        }else{
            System.out.println("你的好友更高");
        }
        sc.close();*/
        //练习2，判断是否能被3整除
       /* Scanner sc=new Scanner(System.in);
        System.out.println("请输入一个整数：");
        int num=sc.nextInt();
        int ge=num%3;
        int shi=num/10;
        int bai=num/100;
        int sum=ge+shi+bai;
        boolean result=sum%3==0;
        System.out.println(result);
        sc.close();*/
        //练习3，判断是否是闰年
        Scanner sc=new Scanner(System.in);
        System.out.println("请输入一个年份：");
        int year=sc.nextInt();
        boolean result=year%4==0&&year%100!=0||year%400==0;
        System.out.println(result);
        sc.close();
    }
}
