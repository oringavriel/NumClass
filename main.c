#include <stdio.h>
#include "NumClass.h"


int main(){

    int num1, num2;
    printf("enter the first number\n");
    scanf("%d",&num1);
     printf("enter the second number\n");
    scanf("%d",&num2);

    int i;
    printf("The Armstrong numbers are:");

    for(i=num1;i<=num2;i++){
        int tnum ;
        tnum= isArmstrong(i);
        if(tnum==1){
            printf(" ");
            printf("%d", i);
        }
    }
     printf( "\n");
     printf("The Palindromes are:");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isPalindrome(i);
        if(tnum==1){
            printf(" ");
            printf("%d", i);
        }
    }
    printf( "\n");
    printf("The Prime numbers are:");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isPrime(i);
        if(tnum==1){
            printf(" ");
            printf("%d", i);
        }
    }
    printf( "\n");
    printf("The Strong numbers are:");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isStrong(i);
        if(tnum==1){
            printf(" ");
            printf("%d", i);
        }
    }
    printf( "\n");
    printf( "\n");
 
}