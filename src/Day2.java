// 🎯 修复点1：补上Scanner导包
import java.util.Scanner;

// 🎯 修复点2：补上外层的类定义（把所有代码包在类里）
public class Day2 {

    public static void main(String[] args){
        // ---------- 注释掉模块1：整数运算 ----------
        /*
        int a=6;
        int b=2;
        System.out.println(a+b);
        System.out.println(a-b);
        System.out.println(a*b);
        System.out.println(a/b);
        System.out.println(a%b);
        System.out.println("------------------------------");
        */

        // ---------- 注释掉模块2：小数运算 ----------
        /*
        double c=1.3;
        double d=1.2;
        System.out.println(c+d);
        System.out.println(c-d);
        System.out.println(c*d);
        System.out.println(c/d);
        System.out.println(c%d);
        */

        // ---------- 注释掉模块3：BMI计算 ----------
        /*
        Scanner sc=new Scanner(System.in);
        System.out.println("请输入体重（kg）：");
        double weight=sc.nextDouble();
        System.out.println("请输入身高（m）：");
        double height=sc.nextDouble();
        double bmi=weight/height/height;
        System.out.println("您的bmi指数为："+bmi);
        */

        // ---------- 只保留要跑的模块4：三位数拆分 ----------
        /*Scanner sca=new Scanner(System.in);
        //  修复点3：把提示改成「三位数」更清晰
        System.out.println("请输入一个100~999之间的三位数：");
        int num=sca.nextInt();

        // 合法性判断（输入非三位数直接报错退出）
        if (num < 100 || num > 999) {
            System.out.println("输入错误！请输入100~999的整数");
            sca.close();
            return;

        // 拆分逻辑（正确无问题）
        int hundred=num/100;       // 百位
        int ten=(num%100)/10;      // 十位
        int one=num%10;            // 个位

        System.out.println("百位："+hundred + " 十位："+ten + " 个位："+one);
        sca.close(); // 用完Scanner关闭（好习惯）*/
        //时间换算
        Scanner sc=new Scanner(System.in);
        System.out.println("请输入时间（秒）：");
        int secands=sc.nextInt();
        int hour=secands/3600;
        int minute=(secands%3600)/60;
        int second=secands%60;
        System.out.println("时间换算结果为："+hour+"小时"+minute+"分"+second+"秒");
        sc.close();



    }


}