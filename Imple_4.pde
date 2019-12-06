 //variables -dp
//assume person is in dorm. with food payed off 
int numOfButtons = 5;
int numOfBars = 3;
float twoThirds = 2.0/3.0;
final float BUTTON_WIDTH = width*(4*twoThirds); //about 267
final float BUTTON_HEIGHT = height/2*(twoThirds); //33.33
final float TEXT_HEIGHT = 20;

//arrays for the buttons -dp
float [] buttonsY= {200,250,300,350,400};
String [] buttons= {"Go to Class","Socialize","Eat","Study","Sleep"};
//arrays for bars
float [] barsY= {550,600,650,700};
String [] bars= {"Health","Hunger","Happiness","Grades"};

//variable number percentage in decimal. 
float Health = returnRanDec(75,85);
float Happy = returnRanDec(25,50);
float Grade = .75;
float Hunger = returnRanDec(30,60);
float Energy = .1;

float textY = 2*twoThirds*20;
float textX = 2*twoThirds*520;
//bar fill
float[] barFill= new float[4];

PImage img;
PImage dog;

//new_hour implemented -sazhelle
int numHour =7;
int rectXClock=100;
int rectYClock=200;

//Boolean to check if random questions are running. To hide the MAIN bars

//DayWeek
int week =1;
int dayRef=0;
String day[] = {"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};
//0 = monday, 6 = Sunday

//animation 
Animation doggo;


void setup(){
  size (1024,768);
  doggo = new Animation("dog/dog",39);
  while(millis()<0*1000){
    intro();
  }
  while(millis()<0*1000){
    classText();
  }

  frameRate(60);
  rectMode(CORNER);
  background();
  buttons(); 
  drawBars(); 
  //placement for actual dog pic
  dog = loadImage("true grits.png");
  img = loadImage("logo.png");
  image(img, BUTTON_HEIGHT, BUTTON_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT*3); 
  //image(dog, (width-BUTTON_WIDTH)/2, 2*BUTTON_HEIGHT, 300,260);
  randClass();
}

//repeatedly checks if mouse is clicked -dp
void draw(){
  //under unpdatingVaribles, just to keep it clean 

    stroke(255,200,0);
    updateVar();
    barsFill();
    mousePressed();   
    //sazhelle
    if(questionApp){
      displayQuestion();
    }
    else{
        midSec();
    }


/*
   noLoop();
   Question q = new Question();
   q.Question();
   q.a();*/
}

void midSec(){
      //all the display for middle section
      rectMode(CORNER);
      noStroke();
      fill(48);
      rect(345, 6,334,500);
     doggo.display((width-BUTTON_WIDTH)/2, 2*BUTTON_HEIGHT);
    displayClock();
        //sazhelle
    displayDay();
    //new class varible
    displayClass();
    checkEnd();
}

//creates the buttons -dp
void buttons(){
 for(int i = 0; i < numOfButtons; i++){  
   strokeWeight(3);
   rect(BUTTON_HEIGHT,buttonsY[i], BUTTON_WIDTH, BUTTON_HEIGHT,10);
   textAlign(CENTER,BOTTOM);
   textSize(30);
   text(buttons[i], BUTTON_HEIGHT+(BUTTON_WIDTH/2),buttonsY[i]+BUTTON_HEIGHT);
   }
}

//makes the layout of the game -dp
void background(){
  background(48,48,48);
  noFill();
  stroke(255,200,0);
  strokeWeight(10);
  rect(0,0,width,height);
  float(height);
  float(width);
  strokeWeight(5);
  line(0,height*twoThirds,width,height*twoThirds);
  line(width/2*twoThirds,0,width/2*twoThirds,height*twoThirds);
  line(width*twoThirds,0,width*twoThirds,height*twoThirds);
}

//sazhelle
void displayClock(){
  //text displaying the time, will be in draw since it is updating 
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text(numHour+":00", width/2,height*(.05));
}

//sazhelle
void newHour(){
 //will run inside final button functions to increase the hour by one 
 //0:00 = 12am, once hits 24:00, will reset to 0:00
  //Rectangle to reset the clock 
  //NEW, hunger will now go down each hour
  rectMode(CENTER);
  fill(48);
  noStroke();
  rect(width/2,height*(.04),width*.1,height*.05);  
  numHour++;
  Hunger-=returnRanDec(5,15);
  chanceQuestion();
  if(Hunger<0){
          Hunger=0;
        }
       
   if(numHour>23){
   numHour=0; 
  }
}

//when button is clicked, it does a thing -dp
void mouseClicked (){
    if (textY>=500){
   noStroke();
   fill(48);
   rectMode(CORNER);
   rect(width*.67,height*.01,330,500);
   textY=TEXT_HEIGHT;
  }
  
  if(questionApp){
     for(int i = 0; i < numOfButtons; i++){ 
     textSize(10);
     textAlign(LEFT);
   if ((mouseY>=buttonsY[0])&&((mouseX-BUTTON_HEIGHT<=BUTTON_WIDTH) && (mouseY-buttonsY[i]<=BUTTON_HEIGHT))){
  
       if((mouseY>=buttonsY[0])&&(mouseY-buttonsY[0]<=BUTTON_HEIGHT)){
            text("Answer the Question first",textX,textY);
         textY+=TEXT_HEIGHT;
        }
       if((mouseY>=buttonsY[1])&&(mouseY-buttonsY[1]<=BUTTON_HEIGHT)){
         text("Answer the Question first",textX,textY);
                 textY+=TEXT_HEIGHT;
        }
       if((mouseY>=buttonsY[2])&&(mouseY-buttonsY[2]<=BUTTON_HEIGHT)){
         text("Answer the Question first",textX,textY);
                 textY+=TEXT_HEIGHT;
        }
        if((mouseY>=buttonsY[3])&&(mouseY-buttonsY[3]<=BUTTON_HEIGHT)){
           text("Answer the Question first",textX,textY);
                   textY+=TEXT_HEIGHT;
        } 
        if((mouseY>=buttonsY[4])&&(mouseY-buttonsY[4]<=BUTTON_HEIGHT)){
           text("Answer the Question first",textX,textY);
                   textY+=TEXT_HEIGHT;
        }
       break;
       }

    }
    
    int qCheck;
    
    for (int j = 0 ; j<numOfOptions;j++){
      if ((mouseY>=optionsY[0])&&((mouseX-(BUTTON_WIDTHQ*1.4)<=BUTTON_WIDTHQ)&&((mouseX-(BUTTON_WIDTHQ/2)+25>=BUTTON_WIDTHQ) && (mouseY-optionsY[j]<=BUTTON_HEIGHTQ)))){
        if((mouseY>=optionsY[0])&&(mouseY-optionsY[0]<=BUTTON_HEIGHTQ)){
            println("op 0");
            qCheck =0;
            questionCheck(qCheck);
            //determine which answer they pressed, this will have to be manual 
            newHour();
            questionApp = false;
            
        }
       if((mouseY>=optionsY[1])&&(mouseY-optionsY[1]<=BUTTON_HEIGHTQ)){
         println("op 1");  
         qCheck =1;
         questionCheck(qCheck);
        newHour();
        questionApp = false;
        }
       if((mouseY>=optionsY[2])&&(mouseY-optionsY[2]<=BUTTON_HEIGHTQ)){
         println("op 2"); 
         qCheck =2;
         questionCheck(qCheck);
          newHour();
         questionApp = false;
        }
        break;
              
      }
    }
  }
  
  
  else{
     for(int i = 0; i < numOfButtons; i++){ 
   if ((mouseY>=buttonsY[0])&&((mouseX-BUTTON_HEIGHT<=BUTTON_WIDTH) && (mouseY-buttonsY[i]<=BUTTON_HEIGHT))){
         rightText();
         // checkHunger();
        //input algorithms here and/or separate functions for each choice
        //sazhelle new hour
       
       if((mouseY>=buttonsY[0])&&(mouseY-buttonsY[0]<=BUTTON_HEIGHT)){
         
         goToClass();
         checkHunger();
        }
       if((mouseY>=buttonsY[1])&&(mouseY-buttonsY[1]<=BUTTON_HEIGHT)){
         
         checkMissedClass();
         newHour();
         socialize();
         checkHunger();
        }
       if((mouseY>=buttonsY[2])&&(mouseY-buttonsY[2]<=BUTTON_HEIGHT)){
          checkMissedClass(); 
         newHour();
         eat();
        //checkHunger();
        }
        if((mouseY>=buttonsY[3])&&(mouseY-buttonsY[3]<=BUTTON_HEIGHT)){
          //checkHunger();
         checkMissedClass();
          newHour();
          study();
          checkHunger();
        } 
        if((mouseY>=buttonsY[4])&&(mouseY-buttonsY[4]<=BUTTON_HEIGHT)){
         // checkHunger();
          checkMissedClass();
          newHour();
          sleep();
          checkHunger();
        }
        break;
       }
    }
  }
  
  

}

//condensed drawBars and text into one function -dp
void drawBars(){
  
  for(int i = 0; i < numOfBars; i++){   
   fill(48);
   rect(BUTTON_HEIGHT*2,barsY[i],BUTTON_WIDTH*4*twoThirds,BUTTON_HEIGHT); 
   fill(255);
   text (bars[i],width-(BUTTON_WIDTH/3),barsY[i]+BUTTON_HEIGHT);
  }
}

//Fill for inside 
void barsFill(){
  
  
 for(int i = 0; i < numOfBars; i++){   
   
   barFill[i] = constrain(barFill[i], 0,1);
   rectMode(CORNER);
   fill(48);
   rect(BUTTON_HEIGHT*2,barsY[i],1*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
   fill(255,200,0);
   rect(BUTTON_HEIGHT*2,barsY[i],barFill[i]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
   stroke(255,200,0);
 }
}



//I move this into the actual classes themselves 
void rightText(){
  if (textY>=500){
   noStroke();
   fill(48);
   rectMode(CORNER);
   rect(width*.67,height*.01,330,500);
   textY=TEXT_HEIGHT;
  }
  
  
  
 for(int i = 0; i < numOfButtons; i++){ 
   if ((mouseY>=buttonsY[0])&&((mouseX-BUTTON_HEIGHT<=BUTTON_WIDTH) && (mouseY-buttonsY[i]<=BUTTON_HEIGHT))){
     textSize(10);
     textAlign(LEFT);
         if((mouseY>=buttonsY[0])&&(mouseY-buttonsY[0]<=BUTTON_HEIGHT)){
         //refer to goToClass
         break;
        }
       if((mouseY>=buttonsY[1])&&(mouseY-buttonsY[1]<=BUTTON_HEIGHT)){
        
         break;
        }
       if((mouseY>=buttonsY[2])&&(mouseY-buttonsY[2]<=BUTTON_HEIGHT)){

         break;
        }
        if((mouseY>=buttonsY[3])&&(mouseY-buttonsY[3]<=BUTTON_HEIGHT)){

         break;
        } 
        if((mouseY>=buttonsY[4])&&(mouseY-buttonsY[4]<=BUTTON_HEIGHT)){

         break;
        }
    }
  }
}

void checkHealth(){
 //so if health reaches 0, then they would miss out on classes and Game Over
  //same thing as end game
  //if health is below 50%, game will say you are feeling unwell
  if(Health<.25){
    fill(201, 34, 22);
    text("Watch your Health",textX,textY);
    textY+=TEXT_HEIGHT; 
    
  }
 if (Health<=0){
  rectMode(CENTER);
  fill(48);
  rect(width/2,height/2,width,height); 
  textAlign(CENTER);
  fill(255);
  text("You were sent to the hospital due to your Health...\n You had to drop out", width*.45,height*.4);
   image(dog, width*.65, height*.3, 300,260);
  stop();
 }
  
}

void checkHunger(){
 //if hunger is below 25%, Health degrades exponentially. if Hunger is 0%, then Health would drop 25%
 //if hunger is above 75%, Health will increase exponentially 
 //equation 0.01x^2-x+25
 //health check 
 float x= Hunger*100;
  println("X: "+x);
 //converts into whole num 
 float a =0.01;
 float b = 1;
 float c = 10;
 float sum = (a*(x*x))-x+c;
 float nSum = sum/100;
 println("Y: "+sum);
 if (x<25){ 
   
    Health-= nSum;
    if(Health <=0){
     Health = 0; 
     checkHealth();
    }
    //checkHealth();
 }
 
 if(Hunger>.75){
    Health+= nSum;
   if(Health >1){
     Health = 1; 
     checkHealth();
    }
 }
 
 
}
