#include <stdio.h>
#include "NumClass.h"

int recLength(int num){
    if(num==0){
        return 0;
    }
    return 1+ recLength(num/10);
}


 int recPower(int num, int power){
    if(power==0){
        return 1;
    }
    return num* recPower(num,power-1);
}


int checkArmstrong(int num,int length){
    if(num==0){
        return 0;
    }
   
    return recPower(num%10,length) + checkArmstrong(num/10,length);
}

int isArmstrong(int num){
    int length= recLength(num);
    int sum= checkArmstrong(num,length);
    if(num==sum){
        return 1;
    }
    return 0;
}



  int getIntoArray (int arr[], int num, int length){
     
    if(length<0){
        return 0;
    }
    arr[length]=num%10;
    return getIntoArray (arr,num/10,length-1);
   
}

int checkPalindrome (int arr[], int i, int j){
    if(arr[i]!=arr[j]){
        return 0;
    }
    if (i==j){
        return 1;
    }
    if(j-i==1 &&arr[i]==arr[j]){
        return 1;
    }
    return checkPalindrome(arr,i+1,j-1);
}

  int isPalindrome(int num){
    int length=recLength( num);
    int arr[length];
     getIntoArray(arr,num,length-1);
     int answer=checkPalindrome(arr,0,length-1);
     if (answer==1){
         return 1;
     }
     return 0;
}

