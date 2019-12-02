//your variable declarations here
Spaceship one = new Spaceship();
Stars[] in = new Stars[200];
Asteroids[] bob = new Asteroids[10];
public void setup() 
{
  //your code here
  size(500, 500);
  fill(255);
  one = new Spaceship();
  for(int i = 0; i < in.length; i++)
  {
    in[i] = new Stars();
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
  one.move();
  one.show();
  for(int i = 0; i < in.length; i++)
  {
    in[i].show();
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
    one.hyperspace();
    one.stopq();
  }
  if(key == 'j')
  {
    one.turn(30);
  }
  if(key == 'y')
  {
    one.turn(-30);
  }
  if(key == 'p')
  {
    one.accelerate(.5);
  }
}
