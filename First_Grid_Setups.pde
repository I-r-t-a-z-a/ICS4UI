void setFirstGrid(){
  for (int i = 0 ; i < gridSize-1 ; i++){
    for (int j = 0 ; j < gridSize-1 ; j++){
      cells[i][j] = grass;
      cellsNext[i][j] = grass;
      originalPosRand[i][j] = grass;
    }
  }
  for (int f = 0; f < nFlowers ; f++){    
    int randI = round(random(0, gridSize-1)); 
    int randJ = round(random(0, gridSize-1));
    if (cells[randI][randJ] == grass){
      cells[randI][randJ] = cellsNext[randI][randJ] = flowers;
      originalPosRand[randI][randJ] = flowers;}
    else if (cells[randI][randJ] != grass)   
      nFlowers++;
  }
  for (int b = 0; b < nBees ; b++){
    int randomI = round(random(0, gridSize-1)); 
    int randomJ = round(random(0, gridSize-1));
      if (cells[randomI][randomJ] == grass){
        cells[randomI][randomJ] = bees; 
        originalPosRand[randomI][randomJ] = bees;}
      else if (cells[randomI][randomJ] != grass)  
        nBees++;
  } 
}  

void setFirstGridCustom(){ 
  for (int i = 0 ; i < gridSize ; i++){ 
    for (int j = 0 ; j < gridSize ; j++){
      cells[i][j] = grass;
      cellsNext[i][j] = grass; 
    }
  }
  cells[fI][fJ] = cellsNext[fI][fJ] = flowers; 
  cells[bI][bJ] = bees;
  
  cells[0][4] = cellsNext[0][4] = flowers; 
  cells[7][4] = cellsNext[7][4] = flowers; 
  cells[2][2] = cellsNext[2][2] = flowers; 
  cells[1][7] = cellsNext[1][7] = flowers;
  cells[8][8] = cellsNext[8][8] = flowers; 
}

void setFlowerField(){
  for (int i = 0 ; i < gridSize ; i++){
    for (int j = 0 ; j < gridSize ; j++){
      cells[i][j] = (i + j) % 2 == 0 ? flowers : grass;
      cellsNext[i][j] = (i + j) % 2 == 0 ? flowers : grass;
    }
  }
  cells[0][1] = bees;
}
