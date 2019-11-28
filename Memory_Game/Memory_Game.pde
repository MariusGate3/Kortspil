Cards[] myCard = new Cards [9];
int [] x = new int [9];
int [] y = new int [9];
int [] fv = new int [9];
int[]checkFv = new int[2];
int[]cardUp = new int[2];
boolean[] clicked = new boolean [9];
PImage flip;
PFont myFront;
int flipped = 0;
int win = 0;

void setup()
{
  int myX = 500; 
  int myY = 550; 
  int myFv = 0;
  int count = 1;
  size(1920,1080); 
  
  //filling our arrays 
  for(int i = 0; i<8; i++) 
  {
    clicked[i] = false;
    y[i] = myY;
    x[i] = myX;
    fv[i] = count;
    count +=1;
    if(count == 5)
    {
     count =1;
    }
    if (myX<1600)//bestemmer hvor mange kort som sidder ovenpå hinanden
    {
      myX +=200;//x afstand mellem kortene
    } 
    if(i==3){
    myY-=400;
    myX-=800;
    }
    
  }
  
  shuffle(); //shuffle the cards
  
  for (int i=0; i<9; i++)
  {
    myCard[i] = new Cards (x[i], y[i], fv[i]);
    //println(x[i],y[i], fv[i]);
  }
}

void draw()
{
  
  for (int i = 0; i<8; i++)
  {
    myCard[i].display();
  }
  
  if (mousePressed)
  {
    flipme();
  }
}

void flipme()
{ 
  for (int i=0; i<8; i++)
  {
    if (mouseX> x[i] && mouseX<(x[i]+105) && mouseY > y[i]+140)
    {
      myCard[i].displayFront();
    }
  }
}

void shuffle()
{
  
  int temp=0;
  int rand=0;
  for (int i = 0; i<8; i++)
  {
    rand = int(random(0,8));
    temp = fv[i];
    fv[i] = fv[rand];
    fv[rand] = temp;
  }
}
void mouseClicked()
{
  for(int i =0; i<8; i++)
  {
    if(mouseX> x[i] && mouseX<(x[i]+105) && > y[i] && mouseY< y[i]+140 && (clicked[i]==false))
    {
      myCard[i].displayFront();
      clicked[i] = true; 
      cardUp[flipped] = i;
      
      flipped ++;
      
      if (flipped == 2) 
      {
        flipped = 0; 
        println("0; ", fv[cardUp[0]]);
        println("1; ", fv[cardUp[1]]);
        
        
