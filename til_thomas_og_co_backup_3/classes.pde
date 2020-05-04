class button {
  float x, y, w, h, g, f;
  String btext;
  boolean hover;

  button(float x_, float y_, float w_, float h_, String bt) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    btext = bt;
  }

  public void render() {
    if (hover() == true) {
      fill(255, 123, 0, 120);
    } else {
      fill(50, 90, 230, 120);
    }
    rectMode(CENTER);
    rect(x, y, w, h);
    textAlign(CENTER, CENTER);
    text(btext, x, y);
    /*
    Tegn en flot knap her ved hjælp af x,y,w,h,btext
     */
  }

  public boolean hover() {
    if (mouseX >= x-w/2 && mouseX <= x+w/2 && mouseY >= y-h/2 && mouseY <= y+h/2) {
      return true;
    } else {
      return false;
    }
    /*
    Hvis musen er indenfor knappen return true
     ellers return false
     */
  }
}
