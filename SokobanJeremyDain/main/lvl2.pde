/*------------------------------------------------------------ creation niveau 2 ---------------------------------------------------*/
void lvl2() {        
  int i, j, k;
  for (i=0; i<12; i++) {
    for (j=0; j<16; j++) {
      for (k=0; k<4; k++) {
        plateau[i][j][k]=0;
      }
    }
  }
  for (i=0; i<12; i++) {
    plateau[i][0][1]=1;
    plateau[i][1][1]=1;    
    plateau[i][14][1]=1;
    plateau[i][15][1]=1;
  }


  for (j=0; j<16; j++) {
    plateau[0][j][1]=1;
    plateau[1][j][1]=1;    
    plateau[10][j][1]=1;
    plateau[11][j][1]=1;
  }
  plateau[3][9][1]=1;
  plateau[6][7][1]=1;
  plateau[6][6][1]=1;
  plateau[2][2][0]=1;
  plateau[3][3][2]=1;
  plateau[7][5][2]=1;
  plateau[5][4][2]=1;
  plateau[10][10][3]=1;
  plateau[3][6][3]=1;
  plateau[5][8][3]=1;
  plateau[5][10][3]=1;

  mvmt_poss=true;
}
