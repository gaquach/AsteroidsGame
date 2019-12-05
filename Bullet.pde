class Bullet extends Floater
{
  //three member functions
  public Bullet() //constructor initializes the member variable
  {
    myCenterX = 300;
    myCenterY = 300;
    myPointDirection = 250;
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + myDirectionX;
    myDirectionY = 5*Math.sin(dRadians) +myDirectionY;
  }
  public void show(){
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
}