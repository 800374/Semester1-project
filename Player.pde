public class Player {
  private PVector pos, vel;
  private int hp, score, SPEED = 1;
  private final int SIZE = 20;
  
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
    System.out.println(pos.y);
    System.out.print(pos.x);
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
        //youLose();
      }
      System.out.println("HP: "+hp);
    }
  }
  
   public void collides(Skeleton sk) {
    double dist = PVector.sub(this.pos,sk.pos).mag();
    if (dist <= this.SIZE / 2 + sk.SIZE / 2) {
      hp--;
      if (hp <= 0) {
        //youLose();
      }
      System.out.println("HP: "+hp);
    }
  }
  
   public void collides(Coin c) {
    double dist = PVector.sub(this.pos,c.pos).mag();
    if (dist <= this.SIZE / 2 + c.SIZE / 2) {
      score++;
      c.active = false;
      System.out.println("Score: "+score);
    }
  } 
   public void collides(Wall w) {
    double dist = PVector.sub(this.pos,w.pos).mag();
    if (dist <= this.SIZE / 2 + p.size / 2) {
      canMove = false;
    }
  }
  public void collides(Powerup p) {
    double dist = PVector.sub(this.pos,p.pos).mag();
    if (dist <= this.SIZE / 2 + p.SIZE / 2) {
      //SPEED++;
      p.active = false;
      System.out.println("You got a little faster");
    }
  }
    public void collides(Exit e) {
    if (this.pos.x >= e.pos.x) { // && = and 
      textAlign(CENTER,CENTER);
      textSize(48);
      text("YOU WIN!",width/2,height/2);
      System.out.println("You collected: " +score + " points");
      //noLoop();
    }
  }
   public void collides(Trap t) {
    double dist = PVector.sub(this.pos,t.pos).mag();
    if (dist <= this.SIZE / 2 + t.SIZE / 2) {
      hp--;
      t.active = false;
      System.out.println("Health: "+hp);
      if (hp <= 0) {
        //youLose();
      }
    }
  }
  
  /*private void youLose() {
    textAlign(CENTER,CENTER);
    textSize(48);
    fill(225,0,0);
    text("Game Over",width/2,height/2);
    pos = new PVector(50,height/2);
    noLoop();
  }*/
  
  
  
  
  
  
  
}
