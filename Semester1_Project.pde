Player player;
Coin[] coins = new Coin [10];
Trap[] traps = new Trap [5];
//Exit exit;
Maze maze;

public void setup() {
  size(1000,800);
player = new Player(50,height/2);
maze = new Maze();
spawnTraps();
spawnCoins();
}

public void draw() {
  background(200);
  maze.show();
  player.show();
  player.move();
    for (int i = 0; i < traps.length; i++) {
    traps[i].show();
    player.collides(traps[i]);
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
/*private void spawnSpider() {
  for (int i = 0; i < spiders.length; i++) {
    spiders[i] = new Spider((int)(Math.random()*maze.size.x + maze.MARGIN),(int)(Math.random()*maze.size.y + maze.MARGIN));
  }
}*/
