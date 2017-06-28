int[][]mapa = new int[100][100];
int vecinos;

void setup() {
  size(700,700);
  for(int y=0;y<100;y++){
    for(int x=0; x<100;x++){
      mapa[y][x]=(int)random(0,2);
      mapa[0][x]=2;
      mapa[y][0]=2;
      mapa[99][x]=2;
      mapa[y][99]=2;
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
}

void keyReleased() {
  if (key == 'q'){
   for(int y=1;y<98; y++ ){
    for(int x=1; x<98; x++){
      if (mapa[y-1][x-1]==1) {
        vecinos ++;
      }
      if (mapa[y-1][x]==1) {
        vecinos ++;
      }
      if (mapa[y-1][x+1]==1) {
        vecinos ++;
      }
      if (mapa[y][x-1]==1) {
        vecinos ++;
      }
      if (mapa[y][x+1]==1) {
        vecinos ++;
      }
      if (mapa[y+1][x-1]==1) {
        vecinos ++;
      }
      if (mapa[y+1][x]==1) {
        vecinos ++;
      }
      if (mapa[y+1][x+1]==1) {
        vecinos ++;
      }
      println("Hay "+vecinos+" vecinos presentes.");
      vecinos = 0;
    }
   }
  }
}