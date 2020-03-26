import java.util.*;

public class main
{
    public static void main(String[] args) {
        String a;
        Scanner s = new Scanner(System.in);
        a = s.nextLine().toLowerCase();
        int[] x = new int[256];
        for (int i=0; i<a.length(); i++)
            x[a.charAt(i)]++;
        for (int i=97;i<123;i++)
            System.out.println((char)(i)+" -> "+x[i]);
    }
}
