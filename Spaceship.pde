class Spaceship extends Floater 
{   
	//your code here
	public Spaceship(){
		corners = 4; 
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -8;
		yCorners[0] = -8;
		xCorners[1] = 16;
		yCorners[1] = 0;
		xCorners[2] = -8;
		yCorners[2] = 8;
		xCorners[3] = -2;
		yCorners[3] = 0;
		myColor = (255);
		myCenterX = 300;
		myCenterY = 300;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 250;
	}
	public void hyperspace()
	{
		myDirectionX = 0;
		myCenterX = (int)(Math.random()*500);
		myCenterY = (int)(Math.random()*500);
		myPointDirection = (int)(Math.random()*250);
	}
	public void stopq()
	{
		myPointDirection = 0;
		myDirectionX = 0;
		myDirectionY = 0; 
	}
}
