Player player;
Wall[] wall = new Wall [57];
Coin[] coins = new Coin [10];
Trap[] traps = new Trap [5];
Spider[] sp = new Spider [3];
Skeleton [] sk = new Skeleton [3];
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
  spawnSkeleton();
  wall[1] = new Wall(30,370,5,30);
  wall[2] = new Wall(50,30,940,5);
  wall[3] = new Wall(940,30,5,750);
  wall[4] = new Wall(940,750,30,5);
  wall[5] = new Wall(30,750,5,425); 
  wall[6] = new Wall(60,340,340,5);
  wall[7] = new Wall(60,420,340,5);
  wall[8] = new Wall(340,420,5,520);
  wall[9] = new Wall(30,580,360,5);
  wall[10] = new Wall(360,580,5,660);
  wall[11] = new Wall(360,660,160,660);
  wall[12] = new Wall(120,700,5,740);
  wall[13] = new Wall(120,700,340,5);
  wall[14] = new Wall(440,700,940,5);
  wall[15] = new Wall(700,700,5,580);
  wall[16] = new Wall(700,700,820,5);
  wall[17] = new Wall(820,700,5,640);
  wall[18] = new Wall(440,620,5,640);
  wall[19] = new Wall(440,620,620,5);
  wall[20] = new Wall(620,620,5,520);
  wall[21] = new Wall(620,520,880,5);
  wall[22] = new Wall(880,520,5,600);
  wall[23] = new Wall(880,600,920,5);
  wall[24] = new Wall(400,480,5,220);
  wall[25] = new Wall(400,180,560,5);
  wall[26] = new Wall(560,200,5,80);
  wall[27] = new Wall(560,80,700,5);
  wall[28] = new Wall(700,80,5,160);
  wall[29] = new Wall(700,160,940,5);
  wall[30] = new Wall(780,160,5,40);
  wall[31] = new Wall(380,340,5,240);
  wall[32] = new Wall(240,240,5,280);
  wall[33] = new Wall(240,280,320,5);
  wall[34] = new Wall(180,180,120,5);
  wall[35] = new Wall(120,180,5,360);
  wall[36] = new Wall(180,180,5,360);
  wall[37] = new Wall(200,120,60,5);
  wall[38] = new Wall(260,180,5,40);
  wall[39] = new Wall(260,140,380,5);
  wall[40] = new Wall(440,160,5,40);
  wall[41] = new Wall(440,220,5,500);
  wall[42] = new Wall(440,540,540,5);
  wall[43] = new Wall(540,540,5,360);
  wall[44] = new Wall(540,360,660,5);
  wall[45] = new Wall(660,360,5,440);
  wall[46] = new Wall(740,400,900,5);
  wall[47] = new Wall(740,260,640,5);
  wall[48] = new Wall(740,400,5,260);
  wall[49] = new Wall(640,260,5,300);
  wall[50] = new Wall(740,300,840,300);
  wall[51] = new Wall(900,300,940,5);
  wall[52] = new Wall(900,300,5,360);
  wall[53] = new Wall(940,360,800,5);
  wall[54] = new Wall(800,360,5,400);
  wall[55] = new Wall(800,400,940,5);
}

public void draw() {
  background(200);
  maze.show();
  exit.show(); //<>//
  player.show();
  player.move();
  player.collides(exit);
  player.collides(wall);
  wall.show[1];
   for (int i = 0; i < sp.length; i++) {
    player.collides(sp[i]);
    sp[i].show();    
    //sp[i].move();
  }
  for (int i = 0; i < sk.length; i++) {
    player.collides(sp[i]);
    sk[i].show();    
    //sk[i].move();
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
private void spawnSkeleton() {
  for (int i = 0; i < sk.length; i++) {
    sk[i] = new Skeleton((int)(Math.random()*maze.size.x + maze.MARGIN),(int)(Math.random()*maze.size.y + maze.MARGIN));
  }
}
private void spawnPowerup() {
  for (int i = 0; i < p.length; i++) {
    p[i] = new Powerup((int)(Math.random()*maze.size.x + maze.MARGIN),(int)(Math.random()*maze.size.y + maze.MARGIN));
  }
}
