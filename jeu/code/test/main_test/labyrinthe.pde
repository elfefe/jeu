static class data{
  static int nbr = 3;
}

class Piece{
  private Chemin[] passage;
  private Piece suivante;
  private int numero;
 // ----------------------------------------
  public Piece(int value){
    passage = new Chemin[value];
    this.numero = 0;
    for(int x=0;x<value;x++){
      suivante = new Piece(data.nbr);
      suivante.numero = x;
      passage[x].num = x;
      if(this.passage[x].porte.indexOf(suivante) < 3)
        this.passage[x].porte.add(suivante);
    }
  }
 // ----------------------------------------
  class Chemin{
    private LinkedList porte;
    private int num;  
  } 
 // ----------------------------------------
}
