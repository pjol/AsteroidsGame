Spaceship joe = new Spaceship();
boolean accel;
boolean right;
boolean left;
boolean hyperSpace;
Star[] sky = new Star[30];

public void setup() 
{
  frameRate(60);
  background(0);
  size(300, 300);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  if(right == true){
    joe.turn(5);
    println("RIGHT");
  }
  if(left == true){
    joe.turn(-5);
    println("LEFT");
  }
  if(accel == true){
    joe.accelerate(0.1);
    println("UP");
  }
  if(hyperSpace == true){
    joe.hyper();
    for(int i = 0; i < sky.length; i++){
      sky[i] = new Star();
    }
    hyperSpace = false;
  }

  joe.move();
  joe.show();
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
}
