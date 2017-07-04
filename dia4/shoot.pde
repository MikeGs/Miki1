class cshoot {
   ArrayList shoot;
      
      cshoot() {
        shoot = new ArrayList();
      }
      
      void disparo() {
      for (int i = 0; i < shoot.size (); i++) {
      //Sacamos un objeto y lo metemos en 'a'
      shoot_fill a = (shoot_fill) shoot.get(i);
      
      //Actualizamos a
      a.actu();
        }
      }
     void anyadir() {
        shoot.add(new shoot_fill(xnave, ynave, -5));
      } 
}