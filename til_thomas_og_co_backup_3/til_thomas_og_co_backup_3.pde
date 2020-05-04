PImage bg, cursor, flag;
int screenNo = 1;
ArrayList<field> fields = new ArrayList<field>();
long drawTimestamp;
button bback, 
  b11, b12, b13, b14, b15, b16, b17, b18, b19, 
  b21, b22, b23, b24, b25, b26, b27, b28, b29, 
  b31, b32, b33, b34, b35, b36, b37, b38, b39, 
  b41, b42, b43, b44, b45, b46, b47, b48, b49, 
  b51, b52, b53, b54, b55, b56, b57, b58, b59, 
  b61, b62, b63, b64, b65, b66, b67, b68, b69, 
  b71, b72, b73, b74, b75, b76, b77, b78, b79, 
  b81, b82, b83, b84, b85, b86, b87, b88, b89, 
  b91, b92, b93, b94, b95, b96, b97, b98, b99, 
  b101, b102, b103, b104, b105, b106, b107, b108, b109;


void setup() {
  fullScreen();
  bg = loadImage("bg.jpg");
  cursor = loadImage("cursor.png");
  flag = loadImage("flag.png");

  noCursor();
  rectMode(CENTER);
  strokeWeight(3);
  stroke(166, 77, 121, 120);

  float wm = width*0.5f; 
  float ws = height*0.175f;
  float hm = height*0.5f; 
  float hs = height*0.175f;
  fields.add(new field(1, wm-ws, hm-hs));
  fields.add(new field(2, wm, hm-hs));
  fields.add(new field(3, wm+ws, hm-hs));
  fields.add(new field(4, wm-ws, hm));
  fields.add(new field(5, wm+ws, hm));
  fields.add(new field(6, wm-ws, hm+hs));
  fields.add(new field(7, wm, hm+hs));
  fields.add(new field(8, wm+ws, hm+hs));

  drawHighlight();

  //Universale knapper
  bback = new button(50, 1000, 100, 50, "tilbage");

  // Knapper til hovedmenu - 1
  b11 = new button(width/2, 50, 100, 50, "Start");
  b12 = new button(width/2, 100, 100, 50, "Indstillinger");
  b13 = new button(width/2, 150, 100, 50, "Profiler");
  b14 = new button(width/2, 200, 100, 50, "Hjælp");
  b15 = new button(width/2, 250, 100, 50, "Exit");

  // Knapper til sang valg - 2
  b21 = new button(50, 50, 100, 50, "Sang1");
  b22 = new button(50, 100, 100, 50, "Sang2");


  // Knapper til profiler - 4
  b41 = new button(50, 50, 100, 50, "Navn 1");
  b42 = new button(50, 100, 100, 50, "Navn 2");
  b43 = new button(50, 150, 100, 50, "Ny profil+");


  // Knapper til hjælp - 5



  // Knapper til exit - 6
  b61 = new button(50, 50, 100, 50, "Ja");
  b62 = new button(50, 100, 100, 50, "Nej");


  // Knapper til sværhedsgrad - 7
  b71 = new button(50, 50, 100, 50, "Let");
  b72 = new button(50, 50, 100, 50, "Mellem");
  b73 = new button(50, 50, 100, 50, "Svær");
  b74 = new button(50, 50, 100, 50, "Ekstrem");
  b75 = new button(50, 50, 100, 50, "Start");
  b76 = new button(50, 50, 100, 50, "Tilbage");

  // Knapper til Profiler - 8

  // Knapper til Exit - 9
  b91 = new button(50, 50, 100, 50, "Ja");
  b92 = new button(50, 100, 100, 50, "Nej");

  // Knapper til Hjælp - 10
  b101 = new button(50, 50, 100, 50, "Tilbage");
}

void draw() {
  background(bg);
  

  if (screenNo == 1) {
    showmenu1();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 2) {
    showmenu2();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 3) {
    showmenu3();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 4) {
    showmenu4();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 5) {
    showmenu5();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 6) {
    showmenu6();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 7) {
    showmenu7();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 8) {
    showmenu8();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 9) {
    showmenu9();
    image(flag, width-90, height-90, 70, 70);
  } else if (screenNo == 10) {


    if (drawTimestamp + 1000 < millis()) {
      drawHighlight();
    }
    for (field f : fields) {
      f.render();
    }
  }
  image(cursor, mouseX-9, mouseY-8, 100, 100);
}

public void mouseReleased() {
  if (screenNo == 1) {
    if (b11.hover()) {
      screenNo = 2;
    } else if (b12.hover()) {
      screenNo = 3;
    } else if (b13.hover()) {
      screenNo = 4;
    } else if (b14.hover()) {
      screenNo = 5;
    } else if (b15.hover()) { 
      screenNo = 10;
    }
    /*
    if (screenNo == 2) {
     
     }else if () {
     }*/
  }
}



public void showmenu1() {
  b11.render();
  b12.render();
  b13.render();
  b14.render();
  b15.render();
}

public void showmenu2() {
  b21.render();
  b22.render();
  bback.render();
}

public void showmenu3() {
  bback.render();
}

public void showmenu4() {
  b41.render();
  b42.render();
  b43.render();
  bback.render();
}

public void showmenu5() {
  bback.render();
}

public void showmenu6() {
  b61.render();
  b62.render();
}

public void showmenu7() {
  b71.render();
  b72.render();
  b73.render();
  b74.render();
}

public void showmenu8() {
  //b81.render();
  //b82.render();
}

public void showmenu9() {
  b91.render();
}
