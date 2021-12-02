Player player;
Coin[] coins = new Coin [10];
Trap[] traps = new Trap [5];
Spider[] sp = new Spider [3];
Powerup[] p = new Powerup [2];
Exit exit;
Maze maze;

public void setup() {
  size(1000,800);
  player = new Player(50,height/2);
  exit = new Exit(width,height);
  maze = new Maze();
  spawnTraps();
  spawnCoins();
  spawnSpider();
  spawnPowerup();
}

public void draw() {
  background(200);
  maze.show();
  exit.show(); //<>//
  player.show();
  player.move();
  player.collides(exit);
   for (int i = 0; i < sp.length; i++) {
    player.collides(sp[i]);
    sp[i].show();    
    //sp[i].move();
  }
  
    for (int i = 0; i < traps.length; i++) {
    traps[i].show();
    player.collides(traps[i]);
  }
  
  for (int i = 0; i < p.length; i++) {
    if (p[i].active == false)
      continue;
    p[i].show();
    player.collides(p[i]);
  }
  
   for (int i = 0; i < coins.length; i++) {
    if (coins[i].active == false) 
      continue; 
    coins[i].show();
    player.collides(coins[i]);
  }
}

public void keyPressed() {
  if (key == 'w') {
    player.vel.y = -player.SPEED;
  }
  if (key == 'a') {
    player.vel.x = -player.SPEED;
  }
  if (key == 's') {
    player.vel.y = player.SPEED;
  }
  if (key == 'd') {
    player.vel.x = player.SPEED;
  }
}

public void keyReleased() {
  if (key == 'w') {
    player.vel.y = 0;
  }
  if (key == 'a') {
    player.vel.x = 0;
  }
  if (key == 's') {
    player.vel.y = 0;
  }
  if (key == 'd') {
    player.vel.x = 0;
  }
}

private void spawnCoins() {
  for (int i = 0; i < coins.length; i++) {
    coins[i] = new Coin((int)(Math.random()*maze.size.x + maze.MARGIN),(int)(Math.random()*maze.size.y + maze.MARGIN));
  }
}
private void spawnTraps() {
  for (int i = 0; i < traps.length; i++) {
    traps[i] = new Trap((int)(Math.random()*maze.size.x + maze.MARGIN),(int)(Math.random()*maze.size.y + maze.MARGIN));
  }
} //<>//
private void spawnSpider() {
  for (int i = 0; i < sp.length; i++) {
    sp[i] = new Spider((int)(Math.random()*maze.size.x + maze.MARGIN),(int)(Math.random()*maze.size.y + maze.MARGIN));
  }
}
private void spawnPowerup() {
  for (int i = 0; i < p.length; i++) {
    p[i] = new Powerup((int)(Math.random()*maze.size.x + maze.MARGIN),(int)(Math.random()*maze.size.y + maze.MARGIN));
  }
}
