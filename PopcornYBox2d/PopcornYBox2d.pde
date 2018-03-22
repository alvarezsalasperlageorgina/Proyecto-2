import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

PImage maiz;
PImage palomita;

maiz uno;

barrera lim1;
barrera lim2;
barrera lim3;

ArrayList <maiz> granitos;

pantalla Inicio;
pantalla Instrucciones;
pantalla Juego;
pantalla Fin;


void setup ()
{
  box2d = new Box2DProcessing (this);
  
  maiz = loadImage ("corn.png");
  palomita = loadImage ("palomita.png");
  
  size (400,800);
  
  box2d. createWorld ();
  box2d. setGravity (0, -2);
  
  uno = new maiz (200, 400, 50, 80);
  granitos = new ArrayList <maiz> ();
  
  lim1 = new barrera (200, 750, 400, 30);
  lim2 = new barrera (0, 400, 10, 800);
  lim3 = new barrera (400, 400, 10, 800);
  
  Inicio = new pantalla ("Intro");
  Instrucciones = new pantalla ("Instrucciones");
  Juego = new pantalla ("Juego");
  Fin = new pantalla ("Fin");
  
}

void draw ()
{
  box2d.step ();
  
  Pantallas ();
  
}