public class StrongBox<E> {
  private E item;
  public void put(E i) {
    this.item = i;
  }
  public E get() {
    return this.item;
  }
}