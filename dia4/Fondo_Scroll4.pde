//diagonalSystem ds;
float r1, r2, r3,n;

void fondo() {
  //size(800, 600);
  smooth();
  ds = new diagonalSystem();
  
  while(n < 90){
    ds.anyadir();
    n++;
  }
  
  //Actualizamos todos los objetos
  ds.actu();
  
}