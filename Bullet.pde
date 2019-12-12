class Bullet extends Floater{
  Bullet(double x, double y, double dir){
    corners = 4;
    xCorners = new double[]{-3.0, -3.0, 3.0, 3.0};
    yCorners = new double[]{-1.0, 1.0, -1.0, 1.0};
    myColor = 255;
    myCenterX = x;
    myCenterY = y;
    myDirectionX = 4 * (Math.cos(dir));
    myDirectionY = 4 * (Math.sin(dir));
    myPointDirection = dir;
  }
}
