public class Player {
  private PVector pos, vel;
  private int hp, score;
  private final int SPEED = 5, SIZE = 20;
  
  public Player(int x, int y) {
    hp = 100;
    score = 0;
    pos = new PVector(x,y);
    vel = new PVector(0,0);
  }
  
   public void show() {
    fill(30,30,255);
    circle(pos.x,pos.y,SIZE);
  }
  
   public void move() {
     if (canMove())
    pos.add(vel);
  }
    public boolean canMove() {
   boolean canMove;
   PVector newPos = PVector.add(pos,vel);
   if (newPos.y < maze.MARGIN ||  newPos.y + SIZE > maze.size.y+ maze.MARGIN || newPos.x < maze.MARGIN){
     canMove = false;
    }
    else {
      canMove = true;
    }
    return canMove;
  }
   public void collides(Spider s) {
    double dist = PVector.sub(this.pos,s.pos).mag();
    if (dist <= this.SIZE / 2 + s.SIZE / 2) {
      hp--;
      if (hp <= 0) {
        youLose();
      }
      System.out.println("HP: "+hp);
    }
  }
  
   /*public void collides(Skeleton sk) {
    double dist = PVector.sub(this.pos,sk.pos).mag();
    if (dist <= this.SIZE / 2 + sk.SIZE / 2) {
      hp--;
      if (hp <= 0) {
        youLose();
      }
      System.out.println("HP: "+hp);
    }
  }*/
   public void collides(Coin c) {
    double dist = PVector.sub(this.pos,c.pos).mag();
    if (dist <= this.SIZE / 2 + c.SIZE / 2) {
      score++;
      c.active = false;
      System.out.println("Score: "+score);
    }
  }
    public void collides(Exit e) {
    if (this.pos.x >= e.pos.x) { // && = and 
      textAlign(CENTER,CENTER);
      textSize(48);
      text("YOU WIN!",width/2,height/2);
      System.out.println("You collected: " +score + " points");
      noLoop();
    }
  }
   public void collides(Trap t) {
    double dist = PVector.sub(this.pos,t.pos).mag();
    if (dist <= this.SIZE / 2 + t.SIZE / 2) {
      hp--;
      t.active = false;
      System.out.println("Health: "+hp);
      if (hp <= 0) {
        youLose();
      }
    }
  }
  
  private void youLose() {
    textAlign(CENTER,CENTER);
    textSize(48);
    text("Game Over",width/2,height/2);
    pos = new PVector(50,height/2);
    noLoop();

  }
  
  
  
  
  
  
  
}
