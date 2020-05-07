void intro() {
  //background
  background(turq);
  textAlign(CENTER);
    
  //PEWPEW BANNER
  rectMode(CORNER);
  fill(0);
  textSize(50);
  text("PewPew", width/2, height/3.5);  
  //start button
  if(mouseX > (width/3) && mouseX < (2*(width/3)) && mouseY > (height/2 -50) && mouseY < (height/2 -50 + 100)){
    fill(150);
    stroke(yellow);
  }else{
   fill(150);
   stroke(0);
  }
  strokeWeight(5);
  rect(width/3, height/2 -50, width/3, 100);
  if(mouseX > (width/3) && mouseX < (2*(width/3)) && mouseY > (height/2 -50) && mouseY < (height/2 -50 + 100)){
    fill(yellow);
  }else{
   fill(0);
  }
  textSize(32);
  textAlign(CENTER);
  text("PLAY", width/2, height/2 +10);
  
}

void introClicks() {
  if(mouseX > (width/3) && mouseX < (2*(width/3)) && mouseY > (height/2 -50) && mouseY < (height/2 -50 + 100)){
  mode = GAME;
  }
}
