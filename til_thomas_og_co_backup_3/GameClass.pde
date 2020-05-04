class field {
  float x, y, w, h;
  int no;
  boolean highlight = false;

  field(int no_, float x_, float y_) {
    w = height*0.14f;
    h = w;
    x = x_;
    y = y_;
    no = no_;
  }

  void render() {
    rectMode(CENTER);
    strokeWeight(2);
    if (highlight) {
      fill(255, 0, 0);
    } else {
      fill(140, 37, 170, 190);
    }
    rect(x, y, w, h);
  }
}

void drawHighlight() {
  drawTimestamp = millis();
  for (field f : fields) {
    f.highlight = false;
  }
  for (int i = 0; i<2; i++) {
    int hl = PApplet.parseInt(random(0.5f, 8.49999999999f));
    for (field f : fields) {
      if (f.no == hl) {
        f.highlight = true;
      }
    }
  }
}
