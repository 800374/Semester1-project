public class Powerup {
  private PVector pos;
  private final int SIZE = 20;
  private boolean active = true;
  
  public Powerup(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(173,216,230);
    square(pos.x,pos.y,SIZE);
  }
}
