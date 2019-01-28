/*------------------------------------------------------------ creation grille ---------------------------------------------------*/
void grille() {
  int i, j;
  for (i=0; i<12; i++) {
    line(0, 50*i, 800, 50*i);
  }
  for (j=0; j<16; j++) {
    line(50*j, 0, 50*j, 600);
  }
}
/*------------------------------------------------------------ dessiner personnage et mur  ---------------------------------------------------*/
void dessiner() 
{
  int i, j;
  for (i=0; i<12; i++) {
    for (j=0; j<16; j++) {
      
      if (plateau[i][j][1]==1) {
        fill(255, 5, 15);
        rect(50*j, 50*i, 50, +50);
        image(mur,50*j,50*i);
      } else if (plateau[i][j][0]==1) {
        
      
        
        //fill(255, 255, 0);
        //ellipse(50*j+25, 50*i+25, 50, 50);
        //fill(0, 0, 0);
        //ellipse(50*j+15, 50*i+20, 5, 5);
        //ellipse(50*j+35, 50*i+20, 5, 5);
        //noFill();
        //arc(50*j+25, 50*i+25, 40, 30, 0, PI);
        image(perso,50*j,50*i);
      
      } else if (plateau[i][j][3]==1) {
        fill(255,234, 0);
        rect(50*j, 50*i, 50, 50);
        image(css,50*j,50*i);
      } else if (plateau[i][j][2]==1) {
        fill(255,0, 0);
        ellipse(50*j+25, 50*i+25, 15, 15);
       // image(interrupteur,50*j+12,50*i+12);
      }
    }
  }
}
