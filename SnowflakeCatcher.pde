Snowflake[] catcher;
void setup()
{
  background(197);
  size(400,400);
  catcher = new Snowflake[200];
  for(int i = 0; i < catcher.length; i ++)
  {
    catcher[i] = new Snowflake();
    
  }
  
}
void draw()
{
 
  for(int i = 0; i < catcher.length; i++)
  {

     catcher[i].erase();

    catcher[i].lookDown();
    catcher[i].move();
    catcher[i].wrap();
    catcher[i].show();

  }
  
}
void mouseDragged()
{
  
    noStroke();
    fill(0);
    ellipse(mouseX,mouseY, 10, 10);
}

class Snowflake
{
  int x,y;
  boolean isMoving;
  
  Snowflake()
  {
    x = (int)(Math.random() * 400);
    y = (int)(Math.random() * 400);
    isMoving = true;
    //class member variable initializations
  }
  void show()
  {
    
    fill(255);
    ellipse(x,y,5,5);
    //mouseDragged();

  }
  void lookDown()
  {
    if(y > -20 && y < 420)
    {
      
      //if(get(x,y+5) != color(197))
        //isMoving = false;
      if(get(x,y+5) != color(0))
        isMoving = true;
      else
        isMoving = false;
    }
    
  }
    
  void erase()
  {
    noStroke();
    fill(197);
    ellipse(x,y,6,6);
  }
  void move()
  {
    //mouseDragged();
    if(isMoving == true)
    
      y = y + 1;
    else
      y = y;
    
  }
  void wrap()
  {
    if(y == 393 )
    {
      y = 0;
      x = (int)(Math.random() * 400);
    }

      
  }
}



