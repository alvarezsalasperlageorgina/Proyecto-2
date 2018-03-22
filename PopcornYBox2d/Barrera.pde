class barrera 
{
  float x, y;
  float w, h;
  
  Body b; 
  
  barrera (float x_, float y_, float w_, float h_)
  {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    
    if (c == 1)
    {
      BodyDef bd = new BodyDef ();
    bd.type = BodyType.STATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld (x, y);
    bd.position.set (posicionTransformada);
    
    b = box2d.createBody (bd);
    }
    
    if (c == 0)
    {
    BodyDef bd = new BodyDef ();
    bd.type = BodyType.KINEMATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld (x, y);
    bd.position.set (posicionTransformada);
    
    b = box2d.createBody (bd);
    }
    
    
    
    PolygonShape sd = new PolygonShape ();
    float box2dW = box2d.scalarPixelsToWorld (w/2);
    float box2dH = box2d.scalarPixelsToWorld (h/2);
    sd.setAsBox (box2dW, box2dH);
    
    b.createFixture (sd, 1);
    
  }
  
  void display ()
  {
    noStroke ();
    fill (255);
    rectMode (CENTER);
    rect (x,y, w, h);
  }
  
}