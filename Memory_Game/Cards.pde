class Cards
{
  PImage cardImage;
  int show =0;
  //int cardWidth=50;
  //int cardHeight=60;
  int cardX = 0;
  int cardY = 0; 
  int faceValue = 0;
  String [] cardName= {"cardback.png", "Avallac'h.jpg", "Ciri.jpg", "Geralt.jpg", "Imlerith.jpg", "Leshen.jpg", "Letho.jpg", "Triss.jpg", "Yennefer.jpg"};
  
  Cards(int x, int y, int fv)
  {
    cardX = x;
    cardY = y;
    faceValue = fv;
  }
  void display()
  {
    cardImage = loadImage(cardName[show]);
        cardImage.resize(200, 0);

    image(cardImage, cardX, cardY);
  }
  void displayFront()
  {
    show = faceValue;
  }
  void faceDown()
  {
    show = 0;
  }
  void matched()
  {
    //println("matched");
    cardX = -150;
  }
}
    
