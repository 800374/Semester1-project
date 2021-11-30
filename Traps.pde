public class Trap {
  private PVector pos;
  private final int SIZE = 20;
  private boolean active = true;
  
  public Trap(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(100,84,0);
    circle(pos.x,pos.y,SIZE);
  }
}
