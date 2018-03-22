

int c;

class maiz
{   
  float x, y;
  float w, h;
  
  Body b;
  
  maiz (float x_, float y_, float w_, float h_)
  {    
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    
    BodyDef bd = new BodyDef ();
    bd.type = BodyType.DYNAMIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld (x, y);
    bd.position.set (posicionTransformada);
    
    b = box2d.createBody (bd);
    
    PolygonShape sd = new PolygonShape ();
    float box2dW = box2d.scalarPixelsToWorld (w/2);
    float box2dH = box2d.scalarPixelsToWorld (h/2);
    sd.setAsBox (box2dW, box2dH);
    
    FixtureDef fd = new FixtureDef ();
    fd. shape = sd;
    fd. density = 1;
    fd. friction = 0.5;
    fd. restitution = 0.3;
    
    b.createFixture (fd);
    b.setAngularVelocity (20);
    
  }
  
  void display ()
  {    
    Vec2 pos = box2d.getBodyPixelCoord (b);
    float angulo = b.getAngle ();
    
    switch (c)
    {
      case 0: 
        imageMode (CENTER);
        pushMatrix ();
        translate (pos.x, pos.y);
        rotate (-angulo);
        image (maiz, 0, 0, w, h);
        popMatrix ();
      break;
      
      case 1:
        imageMode (CENTER);
        pushMatrix ();
        translate (pos.x, pos.y);
        rotate (-angulo);
        image (palomita, 0, 0, w+50, h+20);
        popMatrix ();
      break;
      
    }
   
   }
   
   void click ()
   { 
     Vec2 pos = box2d.getBodyPixelCoord (b);
     
     if (mousePressed == true)
      {
        if ((mouseX < x+25) && (mouseX > x-25) && (mouseY < y+40) && (mouseY > y-40))
            {
              c = 1;
            }
      }
           
   }
  
}
 
/*void mousePressed ()
{
  if (mousePressed == true)
  {
    if ((mouseX < x+25) && (mouseX > x-25) && (mouseY < y+40) && (mouseY > y-40))
        {
          c = 1;
        }
    
  }
  
  else 
  {
    c = 0;
  }
  
}*/