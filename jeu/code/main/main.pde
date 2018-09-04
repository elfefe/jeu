import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

Piece lieu[];

void setup(){
  size(1600, 1200);
  frameRate(60);
  data();
  construction();
}

void draw(){
  background(5, 5, 15);  
  noStroke();
  fill(240,240,240);
  textAlign(LEFT);
  textSize(20);
  text(mouseX + " " + mouseY + " Nombre de salles: " + lieu.length,30,30);
  collision();  
}
