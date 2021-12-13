public class Skeleton {
  private PVector pos, vel, acc;
  private final int SIZE = 25, SPEED = 5;
  
  public Skeleton(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(0,SPEED);
  }
  
  public void show() {
    fill(128,128,128);
    square(pos.x,pos.y,SIZE);
  }
  
  /*public void move() {
    pos.add(vel);
  }*/
}
