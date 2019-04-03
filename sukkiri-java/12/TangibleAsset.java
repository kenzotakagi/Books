public interface Thing {
  double getWeight();
  void setWeight(double weight);
}

public abstract class Asset {
  private String name;
  private int price;
  public Asset(String name, int price) {
    this.name = name;
    this.price = price;
  }
  public String getName() { return this.name; }
  public int getPrice() { return this.price; }
}

public abstract class TangibleAsset extends Asset {
  private String name;
  private int price;
  private String color;
  public TangibleAsset(String name, int price, String color) {
    super(name, price);
    this.color = color;
  }
  public String getColor() { return this.color; }
}

public class Book extends TangibleAsset {
  private String isbn;
  public Book
    (String name, int price, String color, String isbn) {
      super(name, price, color);
      this.isbn = isbn;
    }
  public String getIsbn() { return this.isbn; }
}

public class Computer extends TangibleAsset {
  private String makerName;
  public Computer
    (String name, int price, String color, String makerName) {
      super(name, price, color);
      this.makerName = makerName;
    }
  public String getMakerName() { return this.makerName; }
}