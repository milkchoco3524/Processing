void setup()  {
  size(200,200);
  
  
  
  
}

void draw()  {
  background(234);
  
  strokeWeight(2);
  fill(12, 35, 155);
  beginShape();
  vertex(20,20);
  vertex(40,20);
  vertex(40,50);
  vertex(70,50);
  vertex(70,20);
  vertex(90,20);
  vertex(90,110);
  vertex(20,110);
  
  beginContour();
  vertex(40, 70);
  vertex(40, 90);
  vertex(70, 90);
  vertex(70, 70);
  endContour();
  
  endShape(CLOSE);
  
  
  
  
}
