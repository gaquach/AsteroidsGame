//your variable declarations here
Spaceship onel = new Spaceship();
Stars[] jk = new Stars[200];
Asteroids[] bob = new Asteroids[10];
public void setup() 
{
  //your code here
  size(500, 500);
  fill(255);
  onel = new Spaceship();
  for(int i = 0; i < jk.length; i++)
  {
    jk[i] = new Stars();
  }
  for(int  i = 0; i < bob.length; i++)
  {
    bob[i] = new Asteroids();
  }
}
public void draw() 
{
  //your code here
  background(0);
  onel.move();
  onel.show();
  for(int i = 0; i < jk.length; i++)
  {
    jk[i].show();
  }
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
    bob[i].accelerate(Math.random()-.5);
  }
}
public void keyPressed()
{
  if(key == 'h')
  {
    onel.hyperspace();
    onel.stopq();
  }
  if(key == 'j')
  {
    onel.turn(30);
  }
  if(key == 'y')
  {
    onel.turn(-30);
  }
  if(key == 'p')
  {
    onel.accelerate(.5);
  }
}
