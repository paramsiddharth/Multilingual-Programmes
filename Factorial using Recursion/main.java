import java.util.*;

public class main
{
    public static long fact(long x) {
        return (x<2)?1:x*fact(x-1);
    }
    
    public static void main(String[] args) {
    Scanner i = new Scanner(System.in);
    long y = i.nextLong();
    System.out.println(fact(y));
    }
}
