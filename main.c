#include <stdio.h>
#include "NumClass.h"


int main(){

    int num1, num2;
    printf("enter the first number\n");
    scanf("%d",&num1);
     printf("enter the second number\n");
    scanf("%d",&num2);

    int i;
    printf("The prime numbers : ");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isPrime(i);
        if(tnum==1){
            printf("%d ", i);
        }
    }
    printf( "\n");
     printf("The strong numbers : ");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isStrong(i);
        if(tnum==1){
            printf("%d ", i);
        }
    }
    printf( "\n");
    printf("The armstrong numbers :");

    for(i=num1;i<=num2;i++){
        int tnum ;
        tnum= isArmstrong(i);
        if(tnum==1){
            printf("%d ", i);
        }
    }

     printf( "\n");
     printf("The palindrome numbers : ");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isPalindrome(i);
        if(tnum==1){
            printf("%d ", i);
        }
    }
    printf( "\n");
}