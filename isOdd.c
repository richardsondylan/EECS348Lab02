#include <stdio.h>
#include "isOdd.h"

int isOdd(int num){
    
    if(num % 2 == 1){
        printf("%d is odd.", num);
    }

    return 0;
}