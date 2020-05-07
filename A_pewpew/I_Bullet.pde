class Bullet extends GameObject {
  
  Bullet(){
   super(myPlayer.x, myPlayer.y, 5, 1, pink);
   PVector aim = new PVector(mouseX - myPlayer.x, mouseY - myPlayer.y);
   aim.setMag(10);
   vx = aim.x;
   vy = aim.y;
  }
  
  void act(){
   super.act();
   if(x < 0 - 15 || x > width + 15 || y < 0 -15 || y > height +15){
     hp = 0;
   }
   int i = 0;
   while(i < objects.size()){
    GameObject obj = objects.get(i);
    if(obj instanceof Obstacle){
     if(dist(obj.x, obj.y, x, y) < obj.size/2 + size/2){
       PVector bounce = new PVector(x - obj.x, y - obj.y);
       bounce.setMag(10);
       vx = bounce.x;
       vy = bounce.y;
     }
    }
     i++;
   }
   
  }
  
}
