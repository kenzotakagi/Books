import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Main {
  public static void main(String[] args) {
    Date now = new Date();
    Calendar c = Calendar.getInstance();
    c.setTime(now);
    int day = c.get(Calendar.DAY_OF_MONTH);
    day += 100;
    c.set(Calendar.DAY_OF_MONTH, day);
    Date future = c.getTime();
    SimpleDateFormat f = new SimpleDateFormat("西暦yyy年MM月dd日");
    System.out.println(f.format(future));
  }
}

public class Account {
  String accountNumber;
  int balance;
  public String toString() {
    return "¥¥" + this.balance + "(口座番号 =" + this.accountNumber;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o instanceof Account) {
      Account a = (Account) o;
      String an1 = this.accountNumber.trim();
      String an2 = a.accountNumber.trim();
      if (an1.equals(an2)) {
        return true;
      }
    }
    return false;
  }
}