// Création des pièces
void construction(){
  lieu = new Piece[Labyrinthe.img.length];
  for(int y=0;y<Labyrinthe.img.length;y++){  
    lieu[y] = new Piece(Labyrinthe.img[y][0],
                        Labyrinthe.img[Labyrinthe.nbrpiece].length-1);
    for(int x=0;x<Labyrinthe.img[y].length;x++){  
      lieu[y].img[x] = Labyrinthe.img[y][x];
    }
  }
}

// Affiche l'image correspondant à la pièce
void decor(PImage util){
  image(util, width/2-util.width/2, height/2-util.height/2);
}

// Détection des coordonnées de chemin
void collision(){
  decor(lieu[Labyrinthe.piece].img[0]);
  text("piece: "+Labyrinthe.piece,width/2,30);
  for(int x=0;x<Labyrinthe.img[Labyrinthe.piece].length-1;x++){
    if((mouseX > width/2+lieu[Labyrinthe.piece].passage[x].minx)&& //<>//
       (mouseX < width/2+lieu[Labyrinthe.piece].passage[x].maxx)&&
       (mouseY > height/2+lieu[Labyrinthe.piece].passage[x].miny)&&
       (mouseY < height/2+lieu[Labyrinthe.piece].passage[x].maxy))
    {
      decor(lieu[Labyrinthe.piece].img[x+1]);
      textAlign(CENTER);
      text("chemin: "+lieu[Labyrinthe.piece].passage[x].num,width/2 + 40,60);
      if(mousePressed){
            if(x==0){
              if(Labyrinthe.piece!=0)
                Labyrinthe.piece = (int)Labyrinthe.deplacement.pollLast();
              else{
                Labyrinthe.deplacement.add(Labyrinthe.piece);
                Labyrinthe.piece++;
              }
            }else{
              Labyrinthe.deplacement.add(Labyrinthe.piece);
              Labyrinthe.piece += lieu[Labyrinthe.piece].passage[x].num+x;
            }
       mousePressed = false;
      }
    }
  }
}
