Spaceship bob = new Spaceship();
ArrayList <Asteroid> jin = new ArrayList <Asteroid>();
Star[] nightSky = new Star[200];

public void setup() {
  size(500,500);
  for(int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 10; i++) {
    jin.add(new Asteroid()); 
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  for(int i = 0; i < jin.size(); i++) {
    jin.get(i).show(); 
    jin.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)jin.get(i).getX(), (float)jin.get(i).getY());
    if (d < 10) 
      jin.remove(i);
 
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if(key == 'h'){
    bob.hyperspace();
  }
  if(key == 'a'){
    bob.accelerate(10);
  }
  if(key == 'g'){
    bob.turn(10);
  }
  if(key == 'f'){
    bob.turn(-10);
  }
}
