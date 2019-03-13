import java.util.Scanner;

public class Main {
  public static void main(String[] args){
    int ans = add(100, 10);
    System.out.println("100 + 10 =" + ans);
  }

  public static int add(int x, int y){
    int ans = x + y;
    return ans;
  }
}