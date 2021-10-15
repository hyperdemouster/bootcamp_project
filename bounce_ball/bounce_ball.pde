void setup()
{
  size(800,600);
}

float ballA = 100;
float ballB = 50;
float speedA = 5;
float speedB = 2;
int hit = 0;
int miss = 0;

void draw()
{ //Restart the game.
  if(mousePressed) 
  {hit=0; miss=0;}
  
  //The paddle smaller everytimes the ball touch.
  float paddle = 1000/(hit+10);
  
  //Ball bounced upward
  if(ballA<0 || ballA>width) speedA=-speedA;
  if(ballB>height){
    speedB=-speedB;
    float distance = abs(mouseX-ballA);
    if (distance<paddle) hit +=1; //Count the times ball hit the paddle
    else miss +=1;//Count the times ball missed the paddle
  } else speedB += 1; //Ball bounced multiple times
  //Ball falling down
  ballA += speedA;
  ballB += speedB;
  background(400,150,100);
  fill(200,300,50);
  ellipse(ballA,ballB,30,30);
  fill(500,80,50);
  //The paddle will move along the mouse
  rect(mouseX-paddle,height-10,2*paddle,10);
  fill(0);
  text("score: " + 10*hit,20,20);
  text("miss: " + miss, 20,40);
}

  
