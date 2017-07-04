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
      for (int i=0; i<shoot.size(); i=i+1) {
        shoot_fill a = (shoot_fill) shoot.get(i);
        if (a.yshoot<10) {
          shoot.remove(i);
        }
      }
      }
      
     void anyadir() {
        shoot.add(new shoot_fill(xnave, ynave, -5));
      }
      
      
      boolean colision(int xshoot,int yshoot){
        for (int i=0; i<shoot.size(); i=i+1) {
        shoot_fill a = (shoot_fill) shoot.get(i);
        if(dist (a.xshoot,a.yshoot,xshoot,yshoot)<20) {
          shoot.remove(i);
           return true;
        }
      }
      return false;
    }
}