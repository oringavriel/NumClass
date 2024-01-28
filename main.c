#include <stdio.h>
#include "NumClass.h"


int main(){

    int num1, num2;
    scanf("%d",&num1);
    scanf("%d",&num2);

    int i;
    printf("The Armstrong numbers are:");

    for(i=num1;i<=num2;i++){
        int tnum ;
        tnum= isArmstrong(i);
        if(tnum==1){
            printf(" %d", i);
        }
    }
     printf( "\n");
     printf("The Palindromes are:");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isPalindrome(i);
        if(tnum==1){
            printf(" %d", i);
        }
    }
    printf( "\n");
    printf("The Prime numbers are:");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isPrime(i);
        if(tnum==1){
            printf(" %d", i);
        }
    }
    printf( "\n");
    printf("The Strong numbers are:");

    for(i=num1;i<=num2;i++){
        int tnum;
        tnum= isStrong(i);
        if(tnum==1){
            printf(" %d", i);
        }
    }
    printf( "\n");

return 0;
}
