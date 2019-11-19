Spaceship one = new Spaceship();
Stars[] twoq = new Stars[200];
public void setup() 
{
  size(500, 500);
  fill(255);
  one = new Spaceship();
  for(int i = 0; i < twoq.length; i++)
  {
  	twoq[i] = new Stars();
  }
}
public void draw() 
{
  //your code here
  background(0);
  one.move();
  one.show();
  for(int i = 0; i < twoq.length; i++)
  {
  	twoq[i].show();
  }
}
public void keyPressed()
{
    if(key == 'y')
  {
    one.accelerate(.5);
  }
	if(key == 'h')
	{
		one.hyperspace();
    one.stopq();
	}
	if(key == 'j')
	{
		one.turn(30);
	}
  if(key == 'g')
  {
    one.turn(-30);
  }
}

