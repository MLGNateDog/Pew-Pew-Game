void pause() {
  background(#3B3B3B);
  
  //Continue Button
  fill(150);
  if(mouseX > (width/2 - 200/2) && mouseX < (width/2 + 200/2) && mouseY > (height/2 - 200 - 60/2) && mouseY < width/2 - 200 + 60/2){
   stroke(blue);
   strokeWeight(6);
  }else{
   stroke(0);
   strokeWeight(5);
  }
  rectMode(CENTER);
  rect(width/2, height/2 - 200, 200, 60);
  
  fill(0);
  textMode(CENTER);
  textSize(32);
  text("Continue", width/2, height/2 - 190);
  
  //Quit Button
  fill(150);
  if(mouseX > (width/2 - 200/2) && mouseX < (width/2 + 200/2) && mouseY > (height/2 - 80 - 60/2) && mouseY < width/2 - 80 + 60/2){
   stroke(red);
   strokeWeight(6);
  }else{
   stroke(0);
   strokeWeight(5);
  }
  rectMode(CENTER);
  rect(width/2, height/2 - 80, 200, 60);
  
  fill(0);
  textMode(CENTER);
  textSize(32);
  text("Quit Game", width/2, height/2 - 70);
  
  //settings button
  
  
}

void pauseClicks() {
  
}
