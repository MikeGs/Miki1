class shoot_fill {
  int xshoot, yshoot, vely;

  shoot_fill(int xshoot, int yshoot, int vely) {
    this.xshoot = xshoot;
    this.yshoot = yshoot;
    this.vely = vely;
  }

  void actu() {
    image(objects[5], xshoot, yshoot, 10, 10);
    yshoot = yshoot + vely;
  }
}