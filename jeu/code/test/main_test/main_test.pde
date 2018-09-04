import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

Piece jeu;
Piece nouvelle;

void setup(){
size(800,600);
jeu = new Piece(2);
nouvelle = (Piece)jeu.passage[2].porte.getLast();
}

void draw(){
  background(10);
  fill(240);
  textSize(40);
  text(jeu.numero, 10, width/2);
  text(nouvelle.numero, 200, width/2);
}
