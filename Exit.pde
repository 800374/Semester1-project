public class Exit {
  private PVector pos, size;
  
  public Exit( int gameWidth, int gameHeight) {
    size = new PVector(50,gameHeight);
    pos = new PVector(gameWidth-size.x, 0);
  }
  
  public void show() {
    fill(0,200,0);
    rect(pos.x,pos.y,size.x,size.y);
  }
}
