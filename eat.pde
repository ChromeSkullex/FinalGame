void randomEat(){
 //just random social interactions to spice it up besides the random events 
 //switch cases time WOOOOO!! 
 int ranNum = (int)((Math.random()*((12-1)+1))+1);
 fill(255);
 print(ranNum);
 int tempNum = ranNum;
 switch(ranNum){
   case 1:
     text("You didn't really liked the food, but it is food",textX,textY);
       textY+=TEXT_HEIGHT;
     break;
   case 2:
     text("You saw Harabroski at the admin building, he says hi",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 3:
     text("Chick-Fil-a is the only good food on campus",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 4:
     text("You drove to Chipotle",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 5:
     text("You found a free coupon for a sandwich",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 6:
     text("You went back to your dorm to eat",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 7:
     text("You decided to try something new...",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 8:
     text("You saw something weird in your food, but you're hungry",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 9:
     text("You think that's a hair...",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 10:
     text("You almost choked on a fry",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
     
     case 11:
     text("You were transported MOUNT DOOM... nothing happended ",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
     case 12:
     text("Tim Allen falls thorugh the ceiling, there was a sound... ",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
     case 13:
     text("You are eating at the library, but someone is eating loudly",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
 }
  
}



void eat(){
  for (int i=2;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
 
  Happy+=.5;
  Hunger+=.8;
  if(Happy>1){
    Happy=1;
  }
  if(Hunger>1){
    Hunger=1;
    
  }
  fill(255);
  randomEat();
  //print(Hunger+ "\n"+ Happy);
  checkHunger();
  checkNewDay();
  break;
  }
}
