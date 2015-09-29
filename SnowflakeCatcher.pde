Snowflake[] catcher;
void setup()
{
  
  size(400, 400);
  catcher = new Snowflake[100];
  for(int i = 0; i < catcher.length; i ++)
  {
    catcher[i] = new Snowflake();
    
  }
}
void draw()
{
  background(197);
  
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
  if(mousePressed)
  {
    fill(0);
    ellipse(mouseX,mouseY, 10, 10);

  }
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


  }
  void lookDown()
  {
    if(y > -10 && y < 410)
    {
      
      if(get(x,y) != color(0,0,0))
        isMoving = true;
    }
    else if(get(x,y) == color(0, 0, 0))
        isMoving = false;
    else
      isMoving = false;
  }
  void erase()
  {
    fill(255);
    ellipse(x,y,7,7);
  }
  void move()
  {
    mouseDragged();
    if(isMoving == true)
    
      y = y + 1;
    else
      y = y;
    
  }
  void wrap()
  {
    if(y > 405)
    {
      y = 0;
      x = (int)(Math.random() * 400);
    }

      
  }
}



