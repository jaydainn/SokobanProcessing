/*------------------------------------------------------------ conditions deplacement possible ---------------------------------------------------*/
void deplacement()
{
  int i, j;
  for (i=0; i<12; i++) {
    for (j=0; j<16; j++) {
      if ((plateau[i][j][0]==1)&&(mvmt_poss==true)) {
        if (right==true) { 
          if (plateau[i][j+1][1]!=1) {//pas de mur
            if (plateau[i][j+1][3]==1) {//si caisse
              if ((plateau[i][j+2][3]!=1)&&(plateau[i][j+2][1]!=1)) { //si pas de caisse ni de mur case n+2, le deplacement est possible
                plateau[i][j][0]=0;
                plateau[i][j+1][0]=1;
                plateau[i][j+1][3]=0;
                plateau[i][j+2][3]=1;
                
              }
            } else {//pas de mur ni de caisse (case n+1)
              plateau[i][j][0]=0;
              plateau[i][j+1][0]=1;
            }
          }
        mvmt_poss=false;
      }
      if(left==true){
        if(plateau[i][j-1][1]!=1){ //pas de mur
          if(plateau[i][j-1][3]==1){ //si caisse
            if((plateau[i][j-2][3]!=1)&&(plateau[i][j-2][1]!=1)){ //si pas de caisse ni de mur déplacement possible
              plateau[i][j][0]=0;
              plateau[i][j-1][0]=1;
              plateau[i][j-1][3]=0;
              plateau[i][j-2][3]=1;
            }
          }
          else{//pas de mur ni de caisse
          plateau[i][j][0]=0;
          plateau[i][j-1][0]=1;
          }
        }
        mvmt_poss=false;
      }
      if(up==true){
        if(plateau[i-1][j][1]!=1){ //pas de mur
          if(plateau[i-1][j][3]==1){ //si caisse
            if((plateau[i-2][j][3]!=1)&&(plateau[i-2][j][1]!=1)){ //si pas de caisse ni de mur déplacement possible
              plateau[i][j][0]=0;
              plateau[i-1][j][0]=1;
              plateau[i-1][j][3]=0;
              plateau[i-2][j][3]=1;
            }
          }
          else{//pas de mur ni de caisse
          plateau[i][j][0]=0;
          plateau[i-1][j][0]=1;
          }
        }
        mvmt_poss=false;
      }
      if (down==true) { 
          if (plateau[i+1][j][1]!=1) {//pas de mur
            if (plateau[i+1][j][3]==1) {//si caisse
              if ((plateau[i+2][j][3]!=1)&&(plateau[i+2][j][1]!=1)) { //si pas de caisse ni de mur case n+2, le deplacement est possible
                plateau[i][j][0]=0;
                plateau[i+1][j][0]=1;
                plateau[i+1][j][3]=0;
                plateau[i+2][j][3]=1;
                
              }
            } else {//pas de mur ni de caisse (case n+1)
              plateau[i][j][0]=0;
              plateau[i+1][j][0]=1;
            }
          }
        mvmt_poss=false;
      }
    }
  }
  }
}
/*------------------------------------------------------------ KEYPRESSED ---------------------------------------------------*/
void keyPressed()
{
  if (keyCode == RIGHT) {
    right=true;
    perso = persor;
  }
  if(keyCode ==LEFT){
    left=true;
    perso = persol;
  }
  if(keyCode == DOWN){
    down=true;
    perso = persod;
  }
  if(keyCode == UP){
    up=true;
    perso = persou;
  }
  if(keyCode == 'S'|| keyCode=='s'){
    play = true;
  }
 
}
/*------------------------------------------------------------ KEYRELEASED ---------------------------------------------------*/
void keyReleased()
{
  if (keyCode == RIGHT) {
    right=false;
    mvmt_poss=true;
    perso = persor;
  }
  if (keyCode == LEFT) {
    left=false;
    mvmt_poss=true;
    perso = persol;
  }
  if (keyCode == DOWN) {
    down=false;
    mvmt_poss=true;
    perso = persod;
  }
  if (keyCode == UP) {
    up=false;
    mvmt_poss=true;
    perso = persou;
  }
}
