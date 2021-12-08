class Asteroid extends Floater {
  private double rotspeed;
  public Asteroid() {
    myCenterX = (Math.random()*500);
    myCenterY = (Math.random()*500);
    myXspeed = (Math.random()*5);
    myYspeed = (Math.random()*5);
    rotspeed = (Math.random()*5) - 3;
    myColor = color(255);
    myPointDirection = 0;
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 20;
    yCorners[0] = 14;
    xCorners[1] = 7;
    yCorners[1] = 20;
    xCorners[2] = -19;
    yCorners[2] = 9;
    xCorners[3] = -11;
    yCorners[3] = -18;
    xCorners[4] = 12;
    yCorners[4] = -12;
    }
    public void move() {
      turn(rotspeed);
      super.move();
    }
    public double getX() {
      return myCenterX; 
    }
    public double getY() {
      return myCenterY;
    }
}
