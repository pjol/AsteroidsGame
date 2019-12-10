class Asteroid extends Floater
{
  Asteroid(){
    corners = 10;
    xCorners = new double[corners];
    yCorners = new double[corners];
    double constant = 1 + Math.random() * 6;
    for(int i = 0; i < corners; i++){
      xCorners[i] = (Math.cos(i* (PI/5)) * constant) + (Math.random() * Math.cos(i * (PI / 6)) * 5);
      yCorners[i] = (Math.sin(i* (PI/5)) * constant) + (Math.random() * Math.sin(i * (PI / 6)) * 5);
    }
    myColor = 150;
    myCenterX = sizeX * Math.random();
    myCenterY = sizeY * Math.random();
    myDirectionX = (Math.random() * 3) - 1;
    myDirectionY = (Math.random() * 3) - 1;
    myPointDirection = 180;    
  }
}
