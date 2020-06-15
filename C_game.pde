void game() {
  background(grey);
  
  //game engine code
  noStroke();
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if( obj.isDead()){
     objects.remove(i);
    }
    i++;
  }
  
  //spawn code
  if(frameCount % 60 ==0){
  objects.add(new Enemy());
  }
  
  
  //pause button
  fill(150);
  if(mouseX > 5 && mouseX < 5 + 80 && mouseY > 5 && mouseY < 5 + 25){
   stroke(200);
   strokeWeight(5);
  }else{
   stroke(0);
   strokeWeight(3);
  }
  rectMode(CORNER);
  rect(5, 5, 80, 25);
  
  fill(0);
  textMode(CORNER);
  textSize(20);
  text("Pause", 45, 25);
  
  strokeWeight(5);
}

void gameClicks() {
 if(mouseX > 5 && mouseX < 5 + 80 && mouseY > 5 && mouseY < 5 + 25){
  mode = PAUSE; 
 }
}
