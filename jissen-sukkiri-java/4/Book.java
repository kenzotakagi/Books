import java.util.*;

public class Book implements Comparable<Book>, Cloneable {
  private String title;
  private Date publishDate;
  private String comment;
  public boolean equals(Object o) {
    if(this == o) {
      return true;
    }
    if(o == null) {
      return false;
    }
    if(!(o instanceof Book)) {
      return false;
    }
    Book b = (Book) o;
    if(!publishDate.equals(b.publishDate)) {
      return false;
    }
    if(!title.equals(b.title)) {
      return false;
    }
    return true;
  }
}
