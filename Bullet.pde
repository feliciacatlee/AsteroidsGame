class Bullet extends Floater {
  public Bullet (Spaceship theShip) {
    myColor = color(80, 150, 250);
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirect();
    
    accelerate(6.0);
  }
  
  public void show() {
    fill(myColor);   
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 3.0, 3.0);
  }
  
  public double getCenterX() {return myCenterX;}

  public double getCenterY() {return myCenterY;}
}
