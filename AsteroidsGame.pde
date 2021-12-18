Spaceship bob = new Spaceship();
ArrayList <Asteroid> jin = new ArrayList <Asteroid>();
ArrayList < Bullet> jk = new ArrayList<Bullet>();
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
  bob.show();
  bob.move();
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
  for(int i = 0; i < jk.size(); i++){
    jk.get(i).move();
    jk.get(i).show();
    //for(int j = 0; j < jin.size(); j++) {
       //float a = dist((float)jk.get(i).getX(), (float)jk.get(i).getY(), (float)jin.get(j).getX(), (float)jin.get(j).getY());
       //if(a < 10) {
         //jk.remove(i); 
         //jin.remove(j);
         //break;
       //}
    //}
  }
}
public void keyPressed(){
  if(key == 'h')
    bob.hyperspace();
  else if(key == 'a')
    bob.accelerate(10);
  else if(key == 'g')
    bob.turn(10);
  else if(key == 'f')
    bob.turn(-10);
  else if(key == 'b') 
    jk.add(new Bullet(bob));
}
