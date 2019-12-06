void randomSocial(){
 //just random social interactions to spice it up besides the random events 
 //switch cases time WOOOOO!! 
 int ranNum = (int)((Math.random()*((10-1)+1))+1);
 fill(255);
 print(ranNum);
 int tempNum = ranNum;
 switch(ranNum){
   case 1:
     text("You met up with your friends and discussed your Finals",textX,textY);
       textY+=TEXT_HEIGHT;
     break;
   case 2:
     text("You and your friends decide to play pool at the Game Room.",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 3:
     text("You find your friend at Starbucks, you join her",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 4:
     text("You went out with your friends for some bubble tea",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 5:
     text("You 'stole' your friend's dog, but brought him back to him",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 6:
     text("You hang out at your friend's dorm.",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 7:
     text("You called your friend from a different state",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 8:
     text("You had a good laugh, you needed to use the restroom",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 9:
     text("You didn't know who was avaliable so you went on social media",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 10:
     text("You are over at your friends dorm who lives at College Park",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
 }
  
}



void socialize(){

  for (int i=1;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  
 for (int j=0;j>classNames.length;j++){
     decreaseEff(i, .01);
 }
 //random happiness from .04 -> .1
float ranNum = returnRanNum(.04, .1);
  Happy+=ranNum;

  if(Happy>1){
    Happy= 1;

  }

  randomSocial();
  checkNewDay();
  break;
  }
}
