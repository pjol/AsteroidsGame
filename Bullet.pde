class Bullet extends Floater{
  Bullet(double x, double y, double dir){
    corners = 4;
    xCorners = new double[]{-4.0, -4.0, 3.0, 3.0};
    yCorners = new double[]{-0.5, 0.5, 0.5, -0.5};
    myColor = 255;
    myCenterX = x;
    myCenterY = y;
    myDirectionX = 5 * (Math.cos(dir));
    myDirectionY = 5 * (Math.sin(dir));
    myPointDirection = (dir / PI) * 180;
  }
  public void move (){          
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
}
