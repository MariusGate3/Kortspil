String of = "of";
String[] xColor = {"Red", "Black"};
String[] xNumber = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"};
String[] xSymbol = {"Clubs", "Diamonds", "Hearts", "Spades"};
int xColorPrint = int(random(xColor.length));
int xNumberPrint = int(random(xNumber.length));
int xSymbolPrint = int(random(xSymbol.length));
String[] xCard = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"};

void setup(){
  
  size(1000, 1000);
  println(xColor[xColorPrint] +" "+ xNumber[xNumberPrint] + " " + of + " " + xSymbol[xSymbolPrint]);
  
}

void draw(){
 
  
  
}
