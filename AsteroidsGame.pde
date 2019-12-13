int level = 1;
boolean accel;
boolean right;
boolean left;
boolean hyperSpace;
boolean space;
public int sizeX = (level + 2) * 100;
public int sizeY = (level + 2) * 100;
Star[] sky = new Star[(sizeX * sizeY) / 3000];
Asteroid[] rocks = new Asteroid[(int)(sizeX * sizeY / 12000)];
Spaceship joe = new Spaceship();
Asteroid bob = new Asteroid();
ArrayList<Bullet> guys = new ArrayList<Bullet>();



public void settings(){
  size((int)sizeX, (int)sizeY);  
}

public void setup() 
{
  frameRate(60);
  background(0);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for(int i = 0; i < rocks.length; i++){
    rocks[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  for(int i = 0; i < rocks.length; i++){
    rocks[i].move();
    rocks[i].show();
  }
  if(right == true){
    joe.turn(5);
  }
  if(left == true){
    joe.turn(-5);
  }
  if(accel == true){
    joe.accelerate(0.07);
  }
  if(space == true){
    Bullet guy = new Bullet(joe.getCenterX(), joe.getCenterY(), joe.getDirection());
    guys.add(guy);
  }
  if(hyperSpace == true){
    joe.hyper();
    for(int i = 0; i < sky.length; i++){
      sky[i] = new Star();
    }
    for(int i = 0; i < rocks.length; i++){
      rocks[i] = new Asteroid();
    }
    hyperSpace = false;
  }
  joe.move();
  joe.show();
  for(int i = 0; i < guys.size(); i++){
    guys.get(i).show();
    guys.get(i).move();
  }
}

void keyPressed(){
  if(keyCode == UP){
    accel = true;
  }
  if(keyCode == RIGHT){
    right = true;
  }
  if(keyCode == LEFT){
    left = true;
  }
  if(keyCode == DOWN){
    hyperSpace = true;
  }
  if(keyCode == 32){
    space = true;
  }
}

void keyReleased(){
  if(keyCode == UP){
    accel = false;
  }
  if(keyCode == RIGHT){
    right = false;
  }
  if(keyCode == LEFT){
    left = false;
  }
  if(keyCode == 32){
    space = false;
  }
}
