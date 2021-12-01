public class Spider {
   private PVector pos, vel, acc;
  private final int SIZE = 25, SPEED = 5;
  
  public Spider(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(0,SPEED);
  }
  
  public void show() {
    fill(255,0,0);
    circle(pos.x,pos.y,SIZE);
  }
  
  /*public void move() {
    pos.add(vel);
  }*/
}
