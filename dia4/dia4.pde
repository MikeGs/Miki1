import ddf.minim.*;
Minim minim;
AudioPlayer disparo;
AudioPlayer kill;
AudioPlayer fb;
AudioPlayer beep;

int y, w, h, velx, vely,img;
//Enemigo alien,alien2,alien3,alien4;
int contador=0;
int nenemy = 6;
int restenemy;
Enemigo []alien = new Enemigo[nenemy];
PImage[]objects = new PImage [nenemy];
int xnave, ynave=300,proy=0,yproy=0,xproy=0;
float distancia;
boolean reload=false;
int tiempo = millis();
int estado;

void setup() {
  size(668,400);
  estado = 1;
  objects[1] = loadImage("alien-1-1.png");
  objects[2] = loadImage("alien-1-2.png");
  objects[3] = loadImage("nave1.png");
  objects[4] = loadImage("nave2.png");
  objects[5] = loadImage("proy.png");
  
  for(int y=0;y<nenemy;y=y+1){
      alien[y] = new Enemigo(20+y*60,40,30,90);
   }
  /*alien = new Enemigo(0,40,30,90);
  alien2 = new Enemigo(60,40,30,90);
  alien3 = new Enemigo(120,40,30,90);
  alien4 = new Enemigo(180,40,30,90);
  */
  
  velx=1;
  vely=0;
  
  xnave=width/2-32;
  imageMode(CENTER);
  minim = new Minim(this);
  disparo = minim.loadFile("shoot.wav");
  kill = minim.loadFile("kill.wav");
  fb = minim.loadFile("fb.mp3");
  beep = minim.loadFile("beep.mp3");
}

void draw() {
  
  restenemy = nenemy;
  
  switch (estado) {
  case 1:
  menu();
  break;
    
  case 2:
  juego();
  break;
  
  case 3:
  win();
  break;
  
  case 4:
  go();
  break;
  }
}

void keyPressed() {
  if (keyCode == LEFT){
         xnave = xnave-25;
  }
  if (keyCode == RIGHT){
         xnave = xnave+25;
  }
  if (key == ' ') {
          tiempo = millis();
          proy=1;
          xproy=xnave;
          yproy=ynave-18;
          disparo.play();
          disparo.rewind();
  }
}