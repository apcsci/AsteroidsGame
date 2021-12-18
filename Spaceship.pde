class Spaceship extends Floater  
{
  public Spaceship(){
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = color(255);
    corners = 20; 
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 12; 
    yCorners[0] = 0;
    xCorners[1] = 8;
    yCorners[1] = 4;
    xCorners[2] = 2;
    yCorners[2] = 4;
    xCorners[3] = 2;
    yCorners[3] = 6; 
    xCorners[4] = -6;
    yCorners[4] = 9; 
    xCorners[5] = -6;
    yCorners[5] = 4;
    xCorners[6] = -10;
    yCorners[6] = 4;
    xCorners[7] = -10;
    yCorners[7] = 2;
    xCorners[8] = -14;
    yCorners[8] = 2;
    xCorners[9] = -12;
    yCorners[9] = 1;
    xCorners[10] = -14;
    yCorners[10] = 0;
    xCorners[11] = -12;
    yCorners[11] = -1;
    xCorners[12] = -14;
    yCorners[12] = -2;
    xCorners[13] = -10;
    yCorners[13] = -2;
    xCorners[14] = -10;
    yCorners[14] = -4;
    xCorners[15] = -6;
    yCorners[15] = -4;
    xCorners[16] = -6;
    yCorners[16] = -9;
    xCorners[17] = 2;
    yCorners[17] = -6;
    xCorners[18] = 2;
    yCorners[18] = -4;
    xCorners[19] = 8;
    yCorners[19] = -4;
  }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (Math.random()*500);
    myCenterY = (Math.random()*500);
    myPointDirection = (Math.random()*360);
  }
  public double getX() {
    return myCenterX; 
  }
  public double getY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed; 
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
