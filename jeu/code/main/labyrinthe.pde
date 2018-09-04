// Les variables sous une même bannière !
static class Labyrinthe{
  static int NBRPIECE = 200,NBRCHEMIN = 500;
  static public int[][][] chemin = new int [NBRCHEMIN][][];
  static public String[] nom = new String[NBRPIECE];
  static public int piece;
  static public PImage[][] img;
  static public int nbrchemin=0;
  static public int nbrpiece=0;
  static public LinkedList deplacement = new LinkedList();
}
// Chaque piece du jeu contient un nombre de chemin
class Piece{
  private PImage[] img;
  
  // Allocation des coordonnées des chemins de la piece dans le constructeur
  public Piece (PImage fond,int value){
    img = new PImage[value+1];
    passage = new Chemin[value];
    for(int d1=0;d1<value;d1++){
      passage[d1] = new Chemin(
                           d1,
                           Labyrinthe.chemin[Labyrinthe.nbrpiece][d1][0],
                           Labyrinthe.chemin[Labyrinthe.nbrpiece][d1][1],
                           Labyrinthe.chemin[Labyrinthe.nbrpiece][d1][2],
                           Labyrinthe.chemin[Labyrinthe.nbrpiece][d1][3]);
    img[d1] = fond;
    }
    Labyrinthe.nbrchemin += value;
    if(Labyrinthe.img.length >= Labyrinthe.nbrpiece)
      Labyrinthe.nbrpiece++;
  }
  class Chemin{
    private int num,minx,miny,maxx,maxy;
    public Chemin(int numero,int posx,int posy,int largeur,int hauteur){
      num = numero;
      minx = posx;
      miny = posy;
      maxx = largeur;
      maxy = hauteur;
    }
  }
  Chemin passage[];
}
