//More complicated functions to increase or decrease 



void increaseTestPre(int classNum, int amt){
    println("Increase: " + amt);
  switch(classNum){
    case 0:
       testClass1 = constrain(testClass1, 1, 90);
       testClass1+= amt;
      break;
    case 1:
       testClass2 = constrain(testClass2, 1, 90);
       testClass2+= amt;
      break;
    case 2:
       testClass3 = constrain(testClass3, 1, 90);
       testClass3+= amt;
      break;
  }
  
      println("Total for " + classNames[classNum] +": " + classTest[classNum]);

  
}

void decreaseTestPre(int classNum, int amt){
  println("Decrease: " + amt);

  switch(classNum){
    case 0:
       testClass1 = constrain(testClass1, 1, 99);
       testClass1-= amt;
      break;
    case 1:
       testClass2 = constrain(testClass2, 1, 99);
       testClass2-= amt;
      break;
    case 2:
       testClass3 = constrain(testClass3, 1, 99);
       testClass3-= amt;
      break;
  }
    println("Total for " + classNames[classNum] +": " + classTest[classNum]);
  
}


void increaseEff(int classNum, float amt){
  
  switch(classNum){
    case 0:
       effClass1 = constrain(effClass1, 0, .9);
       effClass1+= amt;
      break;
    case 1:
       effClass2 = constrain(effClass1, 0, .9);
       effClass2+= amt;
      break;
    case 2:
       effClass3 = constrain(effClass1, 0, .9);
       effClass3+= amt;
      break;
  }
 

}

void decreaseEff(int classNum, float amt){
  
    switch(classNum){
    case 0:
       effClass1 = constrain(effClass1, .1, .9);
       effClass1-= amt;
      break;
    case 1:
       effClass2 = constrain(effClass1, .1, .9);
       effClass2-= amt;
      break;
    case 2:
       effClass3 = constrain(effClass1, .1, .9);
       effClass3-= amt;
      break;
  }

}
