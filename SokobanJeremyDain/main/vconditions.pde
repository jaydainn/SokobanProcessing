int cvictory1() {
  int i, j ;
  int win = 0 ;
  for (i = 0; i < 12; i++) {
    for (j=0; j < 16; j++) {
      if ((plateau[i][j][2] == 1) && (plateau[i][j][3] == 1)) {
        win = win +1 ;
        
      }
    }
  }
  return win ;
}

int cvictory2() {
  int i, j ;
  int win = 0 ;
  for (i = 0; i < 12; i++) {
    for (j=0; j < 16; j++) {
      if ((plateau[i][j][2] == 1) && (plateau[i][j][3] == 1)) {
        win = win +1 ;
        
      }
    }
  }
  return win ;
}
