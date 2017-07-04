void juego() {
  //background(0,0,0);
  
  /*alien.actualizar(1);
  alien2.actualizar(2);
  alien3.actualizar(3);
  alien4.actualizar(4);*/
  
  s.disparo();
  
  for(int y=0;y<nenemy;y=y+1){
      alien[y].actualizar(y+1);
   }
  
  /*if (proy==1) {
    image(objects[5],xproy,yproy,10,10);
    yproy=yproy-5;
  }*/
  
  image(objects[4],xnave,ynave,64,64);
  
  fill(255,255,255);
  text("Puntos: "+contador,xnave+25,ynave-20);
  
  if (restenemy==0) {   
   estado = 3;
  }
  
  if (y>350) {
  estado = 4;
  }
  
}