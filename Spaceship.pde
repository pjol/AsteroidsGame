class Spaceship extends Floater  
{   
    Spaceship(){
      corners = 3;
      xCorners = new double[]{-5.0, -5.0, 10.0};
      yCorners = new double[]{-5.0, 5.0, 0.0};
      myColor = 255;
      myCenterX = sizeX / 2;
      myCenterY = sizeY / 2;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 180;
    }
    void hyper(){
      myCenterX = Math.random() * height;
      myCenterY = Math.random() * width;
      myPointDirection = Math.random() * 360;
      myDirectionX = 0;
      myDirectionY = 0;
    }
    public double getDirection(){
      return(myPointDirection);
    }
    public double getCenterX(){
      return(myCenterX);
    }
    public double getCenterY(){
      return(myCenterY);
    }
}
