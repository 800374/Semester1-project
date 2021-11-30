public class Exit {
  private PVector pos, size;
  
  public Exit(){
    
  }
  
  public void show() {
    fill(0,200,0);
    rect(pos.x,pos.y,size.x,size.y);
  }
}
