//////////////////////////////*Proyecto 5 --> Alex Yuyez*/////////////////////////////
////////////////////////////////////*KEYBOARD*////////////////////////////////////////
//import libraries-------------------------------------------------------------------- 
  import processing.sound.*;

  
//Variable Universales¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬
PImage piano;
PImage corchea, sostenido, silencio, claves, clavef, semicorchea,redonda,blanca; 
PFont f;
boolean dd, re, mi, fa, sol, la, si, ddd; 
boolean dn, ren, min, fan, soln, lan, sin, dddn; 
//Sounds!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 SoundFile c;
 SoundFile c1;
 SoundFile d; 
 SoundFile d2;
 SoundFile e;
 SoundFile ff;
 SoundFile f2;
 SoundFile g;
 SoundFile g2;
 SoundFile a;
 SoundFile a2;
 SoundFile b;
 SoundFile c3;
 
 Reverb r;
 Delay de;
 
PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

//void setup°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
void setup()
{
  size(880,600);
  corchea=loadImage("corchea.png");
  sostenido=loadImage("sostenido.png");
  silencio=loadImage("silencio.png");
  claves=loadImage("claves.png");
   clavef=loadImage("clavef.png");
   semicorchea=loadImage("semicorchea.png");
   redonda=loadImage("redonda.png");
   blanca=loadImage("blanca.png");
  piano=loadImage("piano.jpg");
  c = new SoundFile(this, "cachin.mp3");
  c1 = new SoundFile(this, "bs.mp3");
  d = new SoundFile(this, "cb.mp3");
  d2 = new SoundFile(this, "sr.mp3");
  e = new SoundFile(this, "hl.mp3");
  ff = new SoundFile(this, "ns.mp3");
  f2 = new SoundFile(this, "mgm1.mp3");
  g = new SoundFile(this, "eo.mp3");
  g2 = new SoundFile(this, "sol.mp3");
  a = new SoundFile(this, "messenger.mp3");
  a2 = new SoundFile(this, "cassette.mp3");
  b = new SoundFile(this, "win.mp3");
  c3 = new SoundFile(this, "packman.mp3");
  //r = new Reverb(this);
  de=new Delay(this);
  de.process(c, 5);
  de.process(d, 5);
  de.process(e, 5);
  de.process(ff, 5);
  de.process(g, 5);
  de.process(a, 5);
  de.process(b, 5);
  de.process(c3, 5);
  de.process(c1, 5);
  de.process(d2, 5);
  de.process(f2, 5);
  de.process(g2, 5);
  de.process(a2, 5);
  
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);
 }


//void draw>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-
void draw()
{
  background(255);
 image(piano,0,0);
 nombre();
 delay();
 particula();
}


//Void Adicionales====================================================================
void nombre()
{
  fill(255);
  text("W", width*0.06, 95);
  text("E", width*0.13, 95);
  text("T", width*0.28, 95);
  text("Y", width*0.35, 95);
  text("U", width*0.42, 95);
  fill(0);
  text("A", width*0.03, 280);
  text("S", width*0.10, 280);
  text("D", width*0.17, 280);
  text("F", width*0.24, 280);
  text("G", width*0.31, 280);
  text("H", width*0.38, 280);
  text("J", width*0.45, 280);
  text("K", width*0.52, 280);
  text("¡Toca una tecla y desliza el mouse por la pantalla!",width*0.73,400);
}

void keyPressed()
{
//Naturales )()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()()(
  if(key=='a' || key=='A')
  { 
    dd=true;
    c.play();
  }
  
  if(key=='s' || key=='S')
  { re=true;
    d.play();
}
  
  if(key=='d' || key=='D')
  { mi=true;
    e.play();
  }
  
  if(key=='f' || key=='F')
  { fa=true;
    ff.play();
}
  
  if(key=='g' || key=='G')
  { sol=true;
    g.play();
}
  
 if(key=='h' || key=='H')
  { la=true;
    a.play();
}
  
 if(key=='j' || key=='J')
  { si=true;
    b.play();
}
  
  if(key=='k' || key=='K')
  { 
    ddd=true;
    c3.play();
}
  
//sostenidos #########################################################################
  if(key=='w' || key=='W')
  { c1.play();
  dn=true;
}
  
  if(key=='e' || key=='E')
  { d2.play();
     ren=true;
}
  
  if(key=='t' || key=='T')
  { f2.play();
  fan=true;
  }

  if(key=='y' || key=='Y')
  { g2.play();
  soln=true;
}
  
  if(key=='u' || key=='U')
  { a2.play();
  lan=true;
}
}


void particula()
{
  if(dd==true){
    location.x=width*0.03;
  location.add(velocity);
  velocity.add(gravity);
  
  
  if ((location.x > width*0.03) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  stroke(255);
  strokeWeight(2);
  fill(127);
  //ellipse(location.x,location.y,48,48);
  image(corchea,location.x,location.y,20,40);
}
  
  if(re==true){
    location.x=width*0.10;
 
  location.add(velocity);
  
  velocity.add(gravity);
  
 
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }

  
  stroke(255);
  strokeWeight(2);
  fill(127);
  image(sostenido,location.x,location.y,20,40);
  }
  
    if(mi==true){
    location.x=width*0.17;
  location.add(velocity);
  velocity.add(gravity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {

    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }

  stroke(255);
  strokeWeight(2);
  fill(127);
  //ellipse(location.x,location.y,48,48);
  image(silencio,location.x,location.y,20,40);
  }
  
      if(fa==true){
    location.x=width*0.24;
  location.add(velocity);
  velocity.add(gravity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  stroke(255);
  strokeWeight(2);
  fill(127);
  //ellipse(location.x,location.y,48,48);
  image(clavef,location.x,location.y,20,40);
  }
  
      if(sol==true){
    location.x=width*0.31;
  location.add(velocity);
  velocity.add(gravity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  stroke(255);
  strokeWeight(2);
  fill(127);
  //ellipse(location.x,location.y,48,48);
  image(claves,location.x,location.y,20,40);
  }
  
      if(la==true){
    location.x=width*0.38;
  location.add(velocity);
  velocity.add(gravity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  stroke(255);
  strokeWeight(2);
  fill(127);
  image(semicorchea,location.x,location.y,20,40);
  }
  
      if(si==true){
    location.x=width*0.45;
  location.add(velocity);
  velocity.add(gravity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  stroke(255);
  strokeWeight(2);
  fill(127);
 // ellipse(location.x,location.y,48,48);
 image(redonda,location.x,location.y,20,40);
  }
      if(ddd==true){
    location.x=width*0.52;
  location.add(velocity);
  velocity.add(gravity);
  
  // Bounce off edges
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  stroke(255);
  strokeWeight(2);
  fill(127);
  //ellipse(location.x,location.y,48,48);
  image(blanca,location.x,location.y,20,40);
  }
}



void delay()
{
  if(dd==true)
{
  c.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0)); 
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}
  
  if(re==true)
{  
  d.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}
 
  if(mi==true)
{ 
  e.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

if(fa==true)
{ 
 ff.amp(map(mouseY, 0, height, 0.2, 1.0)); 
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

if(sol==true)
{ 
 g.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

if(la==true)
{
 a.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

if(si==true)
{
 b.amp(map(mouseY, 0, height, 0.2, 1.0)); 
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}
if(ddd==true)
{
 c3.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

if(dn==true)
{
 c1.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}
if(ren==true)
{
  d2.amp(map(mouseY, 0, height, 0.2, 1.0)); 
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

if(fan==true)
{
  f2.amp(map(mouseY, 0, height, 0.2, 1.0)); 
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}

if(soln==true)
{
 g2.amp(map(mouseY, 0, height, 0.2, 1.0));
  de.time(map(mouseY, 0, height, 0.001, 2.0));
  de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}
if(lan==true)
{
 a2.amp(map(mouseY, 0, height, 0.2, 1.0)); 
 de.time(map(mouseY, 0, height, 0.001, 2.0));
 de.feedback(map(mouseX, 0, width, 0.0, 0.8));
}
}
