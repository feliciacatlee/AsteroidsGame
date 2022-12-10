class Spaceship extends Floater {
  public Spaceship() {
    corners = 24;
    xCorners = new int[] {-13, -9, -5, -1, 3, -3, 1, 11, 1, -3, 3, -1, 
      -5, -9, -13, -1, -5, -15, -5, 15, -5, -15, -5, -1};
    yCorners = new int[] {0, 0, 2, 0, 0, 3, 5, 0, -5, -3, 0, 0, 
      -2, 0, 0, -6, -8, -5, -10, 0, 10, 5, 8, 6};
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (Math.random()*360);
  }

  public void halt() {
    myXspeed = 0;
    myYspeed = 0;
  }

  public double getCenterX() {return myCenterX;}

  public double getCenterY() {return myCenterY;}
  
  public double getXspeed() {return myXspeed;}
  
  public double getYspeed() {return myYspeed;}
  
  public double getPointDirect() {return myPointDirection;}
}
