//your variable declarations here
Spaceship one = new Spaceship();
Star[] in = new Star[200];
public void setup() 
{
  //your code here
  size(500, 500);
  fill(255);
  one = new Spaceship();
  for(int i = 0; i < in.length; i++)
  {
  	in[i] = new Star();
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

