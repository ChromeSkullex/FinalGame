boolean questionApp = false;
  final String[] names = {"You have a big test but your friends want to hang out ","You are running late for your morning class. Do you: ","The homecoming game is coming up, but there's SIPass "};
   
  final String[] answer1s = {"Study ","Skip breakfast ", "Hang out"};
  final String[] answer2s = {"Go Out ","Go to class late ","Stay in your dorm "};
  final String[] answer3s  = {"Watch Netflix ","Attend Event","Go to Class"};
  //I made it into a matrix cause it works. 2D matrix
  final String[][] matrix = {{"Study ","Stay in dorm", "Hang out "},{"Go Out ","Go to class late ","Stay in your dorm "},{"Watch Netflix ","Attend Event","Go to SIPass"}};
  
  String name = "";
  String answer1 = "";
  String answer2 = "";
  String answer3 = "";
  int iQues = 2;
  
  int numOfOptions=3;
  int numOfQuestions=1;
  float question_prob=.01;
  float question;
  float [] optionsY= {200,250,300};
  final float BUTTON_WIDTHQ = width*(4*twoThirds); //about 267
  final float BUTTON_HEIGHTQ = height/2*(twoThirds); //33.33
  
  void QuestionPick(){

    
    switch(iQues){
       case 0:
      name = names[0];
      answer1 = answer1s[0];
      answer2 = answer2s[0];
      answer3 = answer3s[0];
       break;
       
       case 1:
       name = names[1];
      answer1 = answer1s[1];
      answer2 = answer2s[1];
      answer3 = answer3s[1];
       break;
       
       case 2:
             name = names[2];
      answer1 = answer1s[2];
      answer2 = answer2s[2];
      answer3 = answer3s[2];
       break;
      
    }
     
  }
  
  //chances for question to be displayed. This will be under draw, if true, ranNum will be assined to 'i' and then question is displayed in displayQuestion
  void chanceQuestion(){
    
        int app = (int)chance();
        //percentage of a question appering each time button is pressed, lets say 5%
        if (app<5){
          iQues= int(random(0,3));
          questionApp = true;
      }
        
        
  }
  
  
  //display the question, once the button is pressed, action will occur and dog/clock/date will be displayed again (midSec() to call the original screen 
  void displayQuestion(){
   fill(48);
   rectMode(CORNER);
   rect(width*.34,height*.01,330,350, 10);
   
                              
    QuestionPick();
    
    String[] aQues= new String[3];
    
    for(int j=0;j<matrix[iQues].length;j++){
        aQues[j] = matrix[iQues][j];
    }
    
   for(int i = 0; i < numOfOptions; i++){   
     stroke(255,200,0);
     strokeWeight(3);
     fill(48);
     rect((width-BUTTON_WIDTHQ)/2,optionsY[i],BUTTON_WIDTHQ,BUTTON_HEIGHTQ,10); 
     fill(255);
     
     textAlign(CENTER);
     textSize(25);
     //QUestion name
     text(name, width*.35,height*.05,300,200);

        textSize(20);
       //button Answers
       text(aQues[i], width/2,optionsY[i]+BUTTON_HEIGHTQ-10);

  }
}

//manual checking

void questionCheck(int check){
  
  switch(iQues){
    case 0:
      //Question 1 Friends
          switch(check){
              case 0:
                  //Study
                      for(int i = 0; i<classNames.length;i++){
                          increaseTestPre(i,returnRanInt(20,40));
                          increaseEff(i,returnRanDec(15,20));
                        }
                      Happy-=.2;
                      if(Happy<0){
                        Happy=0;
                      }                       
                  break;
              case 1:
                  //Stay in dorm
                  for(int i = 0; i<classNames.length;i++){
                          increaseTestPre(i,returnRanInt(1,5));
                          increaseEff(i,returnRanDec(1,5));
                        }
                        Happy+=.05;
                      if(Happy>1){
                        Happy=1;
                      }
                  break;
              case 2:
                  //Hang out
                  Happy+=.2;
                      if(Happy>1){
                        Happy=1;
                      }
                      for(int i = 0; i<classNames.length;i++){
                          decreaseTestPre(i,returnRanInt(15,20));
                          decreaseEff(i,returnRanDec(15,20));
                        }
                  break;
            }
      break;
    
    
    case 1:
      //Question 2 Late for Class
      switch(check){
              case 0:
                  //"Go Out ",
                  Happy+=.2;
                      if(Happy>1){
                        Happy=1;
                      }
                      for(int i = 0; i<classNames.length;i++){
                          decreaseTestPre(i,returnRanInt(15,20));
                          decreaseEff(i,returnRanDec(15,20));
                        }
                  break;
              case 1:
                  //"Go to class late ",
                  for(int i = 0; i<classNames.length;i++){
                          increaseTestPre(i,returnRanInt(20,40));
                          increaseEff(i,returnRanDec(15,20));
                        }
                      Happy-=.4;
                      if(Happy<0){
                        Happy=0;
                      }  
                  break;
              case 2:
                  //"Stay in your dorm "
                  for(int i = 0; i<classNames.length;i++){
                           decreaseTestPre(i,returnRanInt(15,20));
                          decreaseEff(i,returnRanDec(15,20));
                        }
                        Happy+=.4;
                      if(Happy>1){
                        Happy=1;
                      }
                  break;
            }
      break;
    
    
    
    case 2:
      //Question 3 Homecoming 
      switch(check){
              case 0:
                  //"Watch Netflix ",
                  for(int i = 0; i<classNames.length;i++){
                           decreaseTestPre(i,returnRanInt(5,20));
                          decreaseEff(i,returnRanDec(2,10));
                        }
                        Happy+=.4;
                      if(Happy>1){
                        Happy=1;
                      }
                  break;
              case 1:
                  //"Attend Event"
                  for(int i = 0; i<classNames.length;i++){
                           decreaseTestPre(i,returnRanInt(5,10));
                          decreaseEff(i,returnRanDec(2,10));
                        }
                        Happy+=.5;
                      if(Happy>1){
                        Happy=1;
                      }
                  break;
              case 2:
                  //,"Go to SIPAss"
                  for(int i = 0; i<classNames.length;i++){
                          increaseTestPre(i,returnRanInt(25,50));
                          increaseEff(i,returnRanDec(20,40));
                        }
                      Happy-=.2;
                      if(Happy<0){
                        Happy=0;
                      }  
                  break;
            }
      break;
  }
  
  
  
  
  

  
}
