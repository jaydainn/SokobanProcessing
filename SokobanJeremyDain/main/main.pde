  /*------------------------------------------------------------ variables ---------------------------------------------------*/
boolean left, right, up, down, mvmt_poss,play,level1,level2;
int[][][] plateau=new int [12][16][4];
int victory= 0;
PImage bg ;
PImage mur;
PImage css ;
PImage persod;
PImage persou;
PImage persol;
PImage persor;
PImage perso ;
PImage fond;
//[1/0,0,0,0] joueur/pas joueur
//[0,1/0,0,0] mur/pas mur
//[0,0,1/0,0] interrupteur/pas interrupteur
//[0,0,0,1/0] caisse/pas caisse
/*------------------------------------------------------------ setup ---------------------------------------------------*/
void setup(){
 
  size(800, 600);
  bg = loadImage("Sketch001.jpg");
  mur = loadImage("Ice_Block.png");
  css = loadImage("caisse.png");
  persod = loadImage("persod.png");
  persou = loadImage("persou.png");
  persol = loadImage("persol.png");
  persor = loadImage("persor.png");
  fond = loadImage("fond.png");
  perso = persod ;
  ett();
  level1 =false;
  level2 = false;
  //play = true;
  
}
/*------------------------------------------------------------ loop ---------------------------------------------------*/
void draw(){
  if(level1 == false ){
    lvl1();
    level1 = true; 
    perso = persod ;
  }
  if(cvictory1() == 2 && level2 == false ){
    lvl2() ;
    level2 = true ;
    perso = persod ;
  }
  if(cvictory2() == 3 ){
    level1 = false ;
    level2 = false ;
    play = false ;
    etf();
  }
  deplacement();
  if(play == true){
     background(fond);
      dessiner();
     // HUD();
      grille();
      //cvictory();
      
  }
}
