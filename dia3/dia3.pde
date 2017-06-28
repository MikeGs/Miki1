int[][]mapa = new int[100][100];
int[][]copia = new int[100][100];
int vecinos;
int tiempo = millis();

void setup() {
  size(700,700);
  for(int y=0;y<100;y++){
    for(int x=0; x<100;x++){
      mapa[x][y]=(int)random(0,2);
      mapa[0][y]=2;
      mapa[x][0]=2;
      mapa[99][y]=2;
      mapa[x][99]=2;
    }
  }
}

void draw() {
  for(int y=0;y<100;y++){
    for(int x=0; x<100; x++){
      if (mapa[y][x]==0) {
        fill(0,0,0);
        rect(x*7,y*7,7,7);
      } else if (mapa[y][x]==2) {
        fill(255,255,255);
        rect(x*7,y*7,7,7);
      }
      else {
        fill(255,0,0);
        rect(x*7,y*7,7,7);
      }
    }
  }
  if (tiempo+5<millis()){
    
    for(int y=1;y<99; y++ ){
    for(int x=1; x<99; x++){
      copia[x][y]=mapa[x][y];
    }
   }
    
   for(int y=1;y<99; y++ ){
    for(int x=1; x<99; x++){
      if (mapa[x-1][y-1]==1) {
        vecinos ++;
      }
      if (mapa[x-1][y]==1) {
        vecinos ++;
      }
      if (mapa[x-1][y+1]==1) {
        vecinos ++;
      }
      if (mapa[x][y-1]==1) {
        vecinos ++;
      }
      if (mapa[x][y+1]==1) {
        vecinos ++;
      }
      if (mapa[x+1][y-1]==1) {
        vecinos ++;
      }
      if (mapa[x+1][y]==1) {
        vecinos ++;
      }
      if (mapa[x+1][y+1]==1) {
        vecinos ++;
      }
      if (mapa[x][y]==1 && vecinos<2){
        copia[x][y]=0;
      }
      if (mapa[x][y]==1 && vecinos>3){
        copia[x][y]=0;
      }
      if (mapa[x][y]==0 && vecinos==3){
        copia[x][y]=1;
      }
      //println("Hay "+vecinos+" vecinos presentes.");
      vecinos = 0;
    }
   }
   for(int y=1;y<99; y++ ){
      for(int x=1; x<99; x++){
        mapa[x][y]=copia[x][y];
      }
     }
     tiempo=millis();
  }
}

void keyPressed() {
  
}