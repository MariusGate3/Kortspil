String of = "of";
String[] xColor = {"Red", "Black"};
String[] xNumber = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"};
String[] xSymbol = {"Clubs", "Diamonds", "Hearts", "Spades"};
int xColorPrint = int(random(xColor.length));
int xNumberPrint = int(random(xNumber.length));
int xSymbolPrint = int(random(xSymbol.length));
println(xColor[xColorPrint] +" "+ xNumber[xNumberPrint] + " " + of + " " + xSymbol[xSymbolPrint]);
