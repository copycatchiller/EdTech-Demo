float rectPos = 119;
int [] fills = {color(0,100,0), 255 ,255};
int percent = 0;
int backgroundColour = #FFDB0D;

void setup() {
  size(800,800);
  background(backgroundColour);
}

void draw() {
  noStroke();
  // bezel
  fill(#000000);
  rect(25, 200, 750, 375, 40);
  
  // screen
  fill(#79DAFF);
  rect(45, 220, 710, 335, 20);
  
  // song title etc
  textSize(24);
  fill(#000000);
  text("Stairway to Heaven by Led Zeppelin", 70, 250);
  
  textSize(16);
  String text = "Mastery: " + percent + "%  Play 3 times in a row to unlock the next section!";
  text(text, 70, 280);
  
  // String text
  textSize(34);
  text("G", 70, 370);
  text("D", 70, 420);
  text("A", 70, 470);
  text("E", 70, 520);
  
  // String lines
  stroke(255);
  strokeWeight(5);
  line(100, 358, 750, 358);
  line(100, 408, 750, 408);
  line(100, 458, 750, 458);
  line(100, 508, 750, 508);
  
  // Note 1
  fill(#FFA500);
  strokeWeight(2);
  ellipse(140, 458, 34, 34);
  textSize(20);
  fill(0);
  text("3", 135, 464);
  
  // Note 2
  fill(#FFA500);
  ellipse(240, 458, 34, 34);
  fill(0);
  text("2", 235, 464);
  
  // Note 3
  fill(#6B8E23);
  ellipse(380, 508, 34, 34);
  fill(0);
  text("5", 375, 514);
  
  // Note 4
  fill(#FFA500);
  ellipse(480, 458, 34, 34);
  fill(0);
  text("2", 475, 462);
  
  // Sliding rectangle
  fill(119, 136, 153, 80);
  rect(rectPos, 332, 40, 200, 20);
  
  // end of section line
  line(600, 330, 600, 530);
  // peak of next section
  ellipse(630, 458, 34, 34);
 
  // progress playing 3 times in a row.
  fill(fills[0]);
  rect(615, 300, 25, 25, 20);
  fill(fills[1]);
  rect(655, 300, 25, 25, 20);
  fill(fills[2]);
  rect(695, 300, 25, 25, 20);
 
}

void keyPressed() {
  if (key == 'd') {
    rectPos += 2;
  }
  if (key == 'a') {
    rectPos -= 2;
  }
  if (key == 'f') {
    rectPos = 119;
  }
  if (key == 'r') {
    percent = 0;
    rectPos = 119;
    fills[0] = 255;
    fills[1] = 255;
    fills[2] = 255;
  }
  if (key == '1') {
    fills[0] = color(0,100,0);
    percent = 2;
  }
  
  if (key == '2') {
    fills[1] = color(0,100,0);
    percent = 5;
  }
  if (key == '3') {
    fills[2] = color(0,100,0);
    percent = 7;
  }
}
