void randomStudy(){
 //just random social interactions to spice it up besides the random events 
 //switch cases time WOOOOO!! 
 int ranNum = (int)((Math.random()*((10-1)+1))+1);
 fill(255);
 print(ranNum);
 int tempNum = ranNum;
 switch(ranNum){
   case 1:
     text("You studied as a group for the Finals",textX,textY);
       textY+=TEXT_HEIGHT;
     break;
   case 2:
     text("You crammed pretty hard, you developed a headache",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 3:
     text("Is that a bug?",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 4:
     text("Your group decides to leave you on read",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 5:
     text("You found an online resource",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 6:
     text("You decide to switch things up",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 7:
     text("You left your phone off, you got 0 notifications",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 8:
     text("Hello? Is that homework answers?",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 9:
     text("You used the tutor center for help",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
   case 10:
     text("You and your friend crammed",textX,textY);
     textY+=TEXT_HEIGHT;
     break;
 }
  
}
void study(){
  for(int i = 0; i<classNames.length;i++){
    increaseTestPre(i,returnRanInt(5,10));
    increaseEff(i,returnRanDec(5,10));
  }
  for (int i=3;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){

  //Grade+=.05;
  Happy-=.2;
  if(Happy<0){
    Happy=0;
  }
  
  fill(255);
  randomStudy();
  checkNewDay();
  break;
  }
}
