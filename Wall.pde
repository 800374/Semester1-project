public class Wall {
private PVector pos,SIZE;
private int w,h,size;



public Wall(int x, int y, int w, int h ) {
 pos = new PVector(x,y);
  
  } 
public void show() {
    fill(0);
    rect(pos.x,pos.y,w,h);
  }
}
