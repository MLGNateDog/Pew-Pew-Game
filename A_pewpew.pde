//Game Objects
ArrayList<GameObject> objects;
Player myPlayer;

//color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #0FAA20;
color turq = #0BDBA5;
color blue = #2C52D8;
color grey = #898B87;
color dgrey = #3B3B3B;
color red = #C11726;
color gold = #A58B23;
color forest_green = #385A1B;

//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//key variables;
boolean wkey, akey, skey, dkey, spacekey;


//text
PFont font;
int shadowOffset = 8;

//#################################### SETUP ###############################################

void setup() {
  //graphics
  size(800, 800);

  //fonts
  textAlign(CENTER, CENTER);

  //initialize key variables
  wkey = akey = skey = dkey = spacekey = false;

  //Game Object initializations
  objects = new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
  int i = 0;
  while(i< 100){
   objects.add(new Obstacle());
   i++;
  }
}

//##################################### DRAW ################################################

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
