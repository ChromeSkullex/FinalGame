//random num rounded to he hundrenth place 
float roundNum(float var){
  //float som = (float)(Math.random());
  float newS=round(var * 100.0) / 100.0;
  return newS;
  
}


//only for the Happy, Sleep, Socialize, Study buttons
float returnRanNum(float min, float max){
    float num = (float)((Math.random()*((max-min)+1))+max)/10; 
   float numR=roundNum(num);
  return numR; 
  
}

//return random decimal 
float returnRanDec(float min, float max){
  //inputs ints then later convert it back to decimal
  float num = (int)random(min,max); 
  float nNum = num/100;
  println(nNum);
  return nNum; 
}

//random number for intergers 
int returnRanInt(int min, int max){
    int num = (int)(Math.random() * (max - min + 1)) + min; 
  return num; 
  
}

//Chance Function, returns a num from 0-100. Percentages 
float chance(){
 float num = (float)Math.random() * 100; 
 return num;
}
