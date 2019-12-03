//your variable declarations here
Spaceship ponel = new Spaceship();
Stars[] ljk = new Stars[200];
Asteroids[] bob = new Asteroids[10];
public void setup() 
{
  //your code here
  size(500, 500);
  fill(255);
  ponel = new Spaceship();
  for(int i = 0; i < ljk.length; i++)
  {
    ljk[i] = new Stars();
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
  ponel.move();
  ponel.show();
  for(int i = 0; i < ljk.length; i++)
  {
    ljk[i].show();
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
    ponel.hyperspace();
    ponel.stopq();
  }
  if(key == 'j')
  {
    ponel.turn(30);
  }
  if(key == 'y')
  {
    ponel.turn(-30);
  }
  if(key == 'p')
  {
    ponel.accelerate(.5);
  }
}
