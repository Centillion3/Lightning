private static int startX = 0; 
private static int startY = 400; 
private static int endX = 0; 
private static int endY = 400;

void setup(){
  size(400, 400);
 background(255, 255, 255);
 strokeWeight(10);
}

void draw(){
  stroke(color((int)(Math.random() * 256), 
  (int)(Math.random() * 256), 
  (int)(Math.random() * 256)));
  if(endY <= 400){
    endX = startX + (int)(Math.random() * 20);
    endY = startY - (int)(Math.random() * 20);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = 0; 
  startY = 400; 
  endX = 0; 
  endY = 400;
}
