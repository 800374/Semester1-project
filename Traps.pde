public class Trap {
  private PVector pos;
  private final int SIZE = 20;
  private boolean active = true;
  
  public Trap(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(192,192,192);
    circle(pos.x,pos.y,SIZE);
  }
}
