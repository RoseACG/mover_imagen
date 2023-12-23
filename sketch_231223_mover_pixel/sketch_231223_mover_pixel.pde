PImage img;

//variable que controla X
int posX = 70;
int posY = 150;


void setup(){
  size(500,500);
  //cargar imagen
  img = loadImage("Garabatos.jpg");
  //cargar los pixeles de la imagen
  //img.loadPixels();
  
  img.resize(700,300);
}

void draw(){
 background(20,70,60);
 
 //mostrar imagen
 image(img,posX,posY,370,200);
 
  if(mousePressed){
    filter(INVERT);
  }
}

void keyPressed(){
  //la imagen se mueve a la Izquierda
  if(key == 'a'){
    posX = posX-1;
  }
  //la imagen se mueve a la derecha
  if(key == 'd'){
    posX = posX+1;
  }
  
  if(key == 'w'){
    posY = posY-1;
  }
  
  if(key == 's'){
    posY = posY+1;
  }
}
