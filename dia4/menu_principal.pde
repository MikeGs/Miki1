boolean click(int x, int y, int w, int h) {
    boolean dentro = false;
    if(mouseX>=x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
      return true;
    } else return false;
}

void mouseClicked() {
  switch (estado) {
  case 1:
  if (click(width/2-100,height/2-175,200,40)) {
  estado = 2;
  }
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

void menu() {
  
  imageMode(CENTER);
  
  //background(0,0,0);
  
  fill(255,255,255);
  rect(width/2-100,height/2-175,200,40);
  
  fill(0,0,0);
  text("JUGAR",width/2,height/2-150);
  
  fill(255,255,255);
  rect(width/2-100,height/2-125,200,40);
  
  fill(0,0,0);
  text("OPCIONES",width/2,height/2-100);
  
  fill(255,255,255);
  rect(width/2-100,height/2-75,200,40);
  
  fill(0,0,0);
  text("SALIR",width/2,height/2-50);
  
}