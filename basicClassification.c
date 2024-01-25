#include<stdio.h>
#include "NumClass.h"


int isPrime(int num){
     if(num==2){
         return 1;}
     if(num<2 || num%2==0){
         return 0;
     }
     int i;
     
     for(i=2;i<10; i++){
        if(i!=num){
         if((num%i)==0){
             return 0;
         }
        }
     }
     return 1;
   
}


int atzeret (int num){
    if(num==0){
        return 1;
    }
    return num * atzeret(num-1);
   
}

int isStrong(int num){
  int sum=0;
  int temp=num;
 
  while(temp>0){
      int tNum=temp%10;
      sum=sum+ atzeret(tNum);
      temp=temp/10;
  }
 
  if(num==sum){
      return 1;
  }
  return 0;
   
}



