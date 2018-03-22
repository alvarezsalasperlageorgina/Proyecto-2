int contador;

class pantalla
{
  String nombre;
  
  pantalla (String nombre_)
  {
    nombre = nombre_;
  }
  
  void display()
  {
    switch (nombre)
    {
      case "Intro":
        Intro ();
      break;
      
      case "Instrucciones":
        Instructions ();
      break;
      
      case "Juego":
        Game ();
      break;
      
      case "Fin":
        End ();
      break;
      
    }
    
  }
  
}

void Intro ()
{
  background (0);
  String titulo = "¡Pocorn Machine!";
  fill (255, 255, 0);
  textSize(45);
  textAlign(CENTER,CENTER);
  text (titulo, 200, 50);
  
  String I = "Presiona 'a' para continuar";
  fill (255);
  textSize (20);
  textAlign(CENTER,CENTER);
  text (I, 200, 100);
  
  for (int i = 0; i<400; i+=40)
  {
    noStroke ();
    fill (255, 0, 0);
    rect (i, 200 , 20, 600);
    
    fill (255);
    rect (i+20, 200, 20, 600);
    
  }
  
}

void Instructions ()
{
  background (0);
  
  String instruccion1 = "Da click en cuantos granos de maíz puedas para convertirlos en palomitas!";
  fill (255,255,0);
  textSize (20);
  text (instruccion1, 0, 280, 400, 200);
  
  String instruccion2 = "Presiona 'a' para continuar";
  fill (255);
  textSize (14);
  textAlign(CENTER,CENTER);
  text (instruccion2, 0, 320, 400, 200);
  
  for (int i = 0; i<400; i+=40)
  {
    noStroke ();
    fill (255, 0, 0);
    rect (i, 0 , 20, 300);
    rect (i, 500, 20, 300);
    
    fill (255);
    rect (i+20, 0, 20, 300);
    rect (i+20, 500, 20, 300);
    
  }
  
  
  
}

void Game ()
{
  background (255, 0, 0);
  
  uno.display ();
  uno.click ();
  
  lim1.display ();
  lim2.display ();
  lim3.display ();
 
  
  if (contador == 2)
  {
    granitos. add (new maiz(200, 0, 50, 80));
  }
  
  for (maiz m: granitos)
  {
    m. display ();
  }
  
}

void End ()
{
  background (0);
  
  String frase = "¡Disfruta tus palomitas!";
  fill (255,255,0);
  textSize (20);
  text (frase, 0, 280, 400, 200);
  
  String instruccion = "Presiona 's' para volver al inicio.";
  fill (255);
  textSize (14);
  textAlign(CENTER,CENTER);
  text (instruccion, 0, 320, 400, 200);
  
  for (int i = 0; i<400; i+=40)
  {
    noStroke ();
    fill (255, 0, 0);
    rect (i, 0 , 20, 300);
    rect (i, 500, 20, 300);
    
    fill (255);
    rect (i+20, 0, 20, 300);
    rect (i+20, 500, 20, 300);
    
  }
  
}

void Pantallas ()
{
  switch (contador)
  {
    case 0: 
      Inicio. display ();
    break;
    
    case 1: 
      Instrucciones. display ();
    break;
    
    case 2: 
      Juego. display ();
    break;
    
    case 3: 
      Fin. display ();
    break;
    
  }
  
}

void keyPressed ()
{
  if (key == 'a')
  {
    contador += 1;
  }
  
  if (key == 's')
  {
    contador = 0;
    c = 0;
    
  }
  
}