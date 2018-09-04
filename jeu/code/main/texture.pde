void data(){
  
  // Coordonnées des images
  Labyrinthe.img = new PImage[][]{ 
    {// VILLAGE
      loadImage("../../debut/village/village.jpg"),
      loadImage("../../debut/village/village-plage.png"),
      loadImage("../../debut/village/village-village.png"),
      loadImage("../../debut/village/village-foret.png")
    },{// PLAGE
      loadImage("../../debut/plage/plage.jpg"),
      loadImage("../../debut/plage/plage-village.png")
    },{// PLACE
      loadImage("../../debut/place/place.jpg"),
      loadImage("../../debut/place/place-village.png"),
      loadImage("../../debut/place/place-marche.png"),
      loadImage("../../debut/place/place-logement.png")
    },{// FORET
      loadImage("../../debut/foret/foret_clair.jpg"),
      loadImage("../../debut/foret/foret_clair-village.png"),
      loadImage("../../debut/foret/foret_clair-partir.png")
    },{// MARCHE
      loadImage("../../debut/marche/marche.jpg"),
      loadImage("../../debut/marche/marche-place.png")
    },{// LOGEMENT
      loadImage("../../debut/logement/logement.jpg"),
      loadImage("../../debut/logement/logement-place.png")
    },{// PARTIR 
      loadImage("../../debut/partir/partir_village.jpg"),
      loadImage("../../debut/partir/partir_village-foret.png")
    }
  };
  
  // Coordonnées de chemins
  Labyrinthe.chemin = new int[][][]{
    {  //village
      {-330,160,-90,200},//plage
      {-170,40,80,160},//village
      {160,45,510,185}//foret
    },{//plage
      {220,30,545,300}
    },{//place
      {-175,165,225,335},//village
      {-470,-130,-340,115},//marche
      {-285,-110,-95,115},//logement
    },{//foret
      {-400,250,250,365},//village
      {-20,-25,20,140},//partir
    },{//marche
      {-310,235,195,300}
    },{//logement
      {310,120,610,325}
    },{//partir
      {310,120,610,325}
    }
  };
}
