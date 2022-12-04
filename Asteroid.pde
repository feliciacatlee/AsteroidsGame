class Asteroid extends Floater {
  private double omega;
  public Asteroid() {
    corners = 14;
    xCorners = new int[] {-7, -2, -10, -3, -6, 0,
                          1, 3, 8, 4, 10, 4, 2, 0};
    yCorners = new int[] {-11, -3, -5, 0, 4, 2,
                          7, 2, 6, -1, -3, -5, -13, -5};
    myColor = 255;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (Math.random()*10 - 5);
    myYspeed = (Math.random()*10 - 5);
    myPointDirection = 0;
    
    myColor = color((int)(Math.random()*100+50), (int)(Math.random()*20+30),(int)(Math.random()*20+30));
    myPointDirection = (Math.random()*360);
    omega = (Math.random()*16 - 8);
  }
  
  public double getOmega() {
    return omega;
  }
  
  public double getMyX() {
    return myCenterX;
  }
  
  public double getMyY() {
    return myCenterY;
  }
  
  public void move() {
    turn(getOmega());
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
  }
}
