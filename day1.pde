// 창의 크기 설정
size(500,300);

// RGB 
background(200);

//point(x, y);
point(250,150);
point(251,150);
point(252,150);
point(253,150);
point(254,150);

// line(x1, y1, x2, y2);
//line(500,300,0,0);
//line(500, 0, 0, 300);

//rect(x, y, w, h);
//rectMode(CENTER);
//rect(250, 150, 200, 200);

//// ellipse(x, y, w, h);
////ellipseMode(CORNER);
//strokeWeight(9);
//stroke(255, 255, 0);
////noStroke();
////fill(140,0,0);
//noFill();
//ellipse(250, 150, 120, 120);


void setup(){
  size(400, 400);
  background(0);
  textSize(30);
  text("Ho Young LEE",200, 100); 
  
  PFont font = createFont("궁서체", 32);
  textFont(font);
  
  text("Ho Young LEE",150, 300); 
  //PImage img = loadImage("logo.png");
  //image(img, 20, 50, 200, 70);

}

void draw(){
}
