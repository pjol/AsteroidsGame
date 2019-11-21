class Spaceship extends Floater  
{   
    Spaceship(){
      corners = 3;
      xCorners = new int[]{-5, -5, 10};
      yCorners = new int[]{-5, 5, 0};
      myColor = 255;
      myCenterX = width/2;
      myCenterY = height/2;
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
}
