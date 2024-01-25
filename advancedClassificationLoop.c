#include <stdio.h>
#include "NumClass.h"

int isPalindrome (int num){
    int temp=num;
    int length=0;
   
    while(temp>0){
    temp= temp/10;
    length++;
} 

if(length==1){
    return 1;
}


int arr[length];
int i;
for(i=0;i<length;i++){
    arr[i]=num%10;
    num=num/10;
}  


for(i=0;i<length/2;i++){
    if(arr[i]!=arr[length-1-i]){
        return 0;
    }
} 

    return 1;


}


int power (int num, int p){
    int sum=1;
    int i;
   
    for(i=0;i<p;i++){
        sum=sum*num;
    }
    return sum;
}

int isArmstrong(int num){
    int temp=num;
    int length=0;
   
    while(temp>0){
    temp= temp/10;
    length++;
}  

    int sum=0;
    temp=num;
    while (temp>0){
        sum=sum+ power(temp%10,length);
        temp=temp/10;
    }

    if(sum==num){
    return 1;
 }
    return 0;

   
}