public class Coin {
  private PVector pos;
  private final int SIZE = 20;
  private boolean active = true;
  
  public Coin(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(225,225,0);
    circle(pos.x,pos.y,SIZE);
  }
}
