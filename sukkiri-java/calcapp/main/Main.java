package calcapp.main;
import calcapp.logics.CalcLogic;
public class Main {
  public static void main(String[] argas) {
    int a = 10; int b = 2;
    int total = CalcLogic.tasu(a, b);
    int delta = CalcLogic.hiku(a, b);
    System.out.println(total + delta);
  }
}