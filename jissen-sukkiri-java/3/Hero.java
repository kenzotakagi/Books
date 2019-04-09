import java.util.ArrayList;

public class Hero {
  private String name;

  public Hero(String name) {
    this.name = name;
  }

  public String getName() {
    return this.name;
  }
}

public class Main{
  public static void main(String[] args) {
    Hero hero1 = new Hero("斎藤"); 
    Hero hero2 = new Hero("鈴木");
    ArrayList<Hero> heroes = new ArrayList<Hero>();
    heroes.add(h1);
    heroes.add(h2);
    for(Hero h : heroes) {
      System.out.println(h.getName());
    }
  }
}