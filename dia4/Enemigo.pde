class Enemigo {
int x=0,vida=20;
boolean vivo=true;
  Enemigo(int ex, int ey, int ew, int eh) {
    x=ex;
    y=ey;
    w=ew;
    h=eh;
  }

  void actualizar(int n) {
    x=x+velx;
    y=y+vely;
    //rect(x,y,w,h);
    //image(objects[1], x, y, 64, 50);
    //x=x+n;
    if (vivo) {
    image(objects[1], x, y, 50, 40);
    fill(255,255,255);
    text(vida,x,y-25);
    if (x>objects[1].width+90 && vivo) {
      velx=-1;
      y=y+20;
      beep.play();
      beep.rewind();
    }
    if (x<20 && vivo) {
      velx=1;
      y=y+20;
      beep.play();
      beep.rewind();
    }
    }
    
    if (vivo ==true) {
    if(s.colision(x,y) == true){
      vida = vida-10;
      contador = contador+0;
    }}
    
    if (vivo==true && vida==0) {
        contador = contador+1;
        vivo = false;
        kill.play();
        kill.rewind();
    }
    if (contador==1) {
        fb.play();
    }
    
}}