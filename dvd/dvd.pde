int xspeed = 50;
int yspeed = 50;

float xpos;
float ypos;

PImage dvd;
float r;
float g;
float b;

int cantos;

void setup(){
  //size(1000, 800);
  fullScreen();
  
  xpos = random(width - 128);
  xpos = random(height - 76);
 
  dvd = loadImage("dvd.png");
  r = random(100, 255);
  g = random(100, 255);
  b = random(100, 255);
}

void draw(){
  background(0);
  //rect(xpos, ypos, 100, 50); 
  tint(r, g, b);
  image(dvd, xpos, ypos);
  xpos += xspeed;
  ypos += yspeed;
  
  fill(255);
  text("Cantos:" + cantos, width/2 - 20, 10);
  
  if(xpos >= width - 128){
    xspeed = -xspeed;
    r = random(100, 255);
    g = random(100, 255);
    b = random(100, 255);
  }else if(xpos <= 0){
    xspeed = -xspeed;
    r = random(100, 255);
    g = random(100, 255);
    b = random(100, 255);
  }
  
  if(ypos >= height - 76){
    yspeed = -yspeed;
    r = random(100, 255);
    g = random(100, 255);
    b = random(100, 255);
  }else if(ypos <= 0){
    yspeed = -yspeed;
    r = random(100, 255);
    g = random(100, 255);
    b = random(100, 255);
  }
  
  if(ypos <= 0 && xpos <= 0){
    cantos++;
  }else if(ypos <= 0 && xpos >= width - 128){
    cantos++;
  }else if(ypos >= height-76 && xpos >= width - 128){
    cantos++;
  }else if(ypos >= height-76 && xpos <= 0){
    cantos++;
  }
  
}
